#!/usr/bin/env python3
"""
高德车机版 资源包 (libMapAsset.so / libLayerAsset.so) 解包/打包工具

这些 .so 并非 ELF 库，而是高德自研的资源容器。格式（逆向自“装饰助手”App
com.example.decorationassistant.SoParser，并用真实文件逐字节校验）：

  [文件头][16字节×N 索引表][数据区][尾部 zlib 文件名索引]

- 若开头为 7F 45 4C 46 且长度≥4100，则存在 ELF 壳，所有数据偏移 +4096。
- 头部 @4 (相对) = 数据区起始；索引表起点：MapAsset=57、LayerAsset=61 (再 +elf_base)。
- 每条记录 16 字节，小端 uint32：{ id, offset, len, type }  (offset/len 为相对偏移)。
- 文件名不存在于索引表：靠“数据区末尾的 zlib 文本索引”(每行 md5/size/filename)
  按【资源字节的 MD5】反查；重名冲突(内容相同)再用 merged_resource_table.json 按 id 兜底。
- type 由文件魔数判定：PNG=2(.9.png=4)、JPEG/GIF=2、ZIP=12、JSON=13、gzip/zlib/.data=14、.dat=3 …

用法：
  解包:  python3 soasset.py unpack <libMapAsset.so> [-o 输出目录] [--merged merged_resource_table.json]
  打包:  python3 soasset.py pack   <输出目录> --orig <原始.so> [-o 新.so]
  列表:  python3 soasset.py list   <libMapAsset.so>

打包说明：以原始 .so 为模板，按目录里(可能被修改过的)文件重建数据区、原地改写索引表、
重建尾部 zlib 索引。未改动时数据区与索引表与原文件逐字节一致。
"""
import sys, os, struct, zlib, hashlib, json, re, argparse, binascii

# ---- 底层读写 -------------------------------------------------------------
def u32(b, o):  return struct.unpack_from('<I', b, o)[0]
def p32(v):     return struct.pack('<I', v & 0xffffffff)

def has_elf(b):
    return len(b) >= 4100 and b[:4] == b'\x7fELF'

def asset_kind(name):
    n = os.path.basename(name)
    if 'LayerAsset' in n: return 'LayerAsset'
    if 'MapAsset'   in n: return 'MapAsset'
    return 'MapAsset'

def record_start(kind, elf_base):
    # SoParser.getEntryStart() 返回 53/57，记录字段从 +4 开始 → 实际记录起点 57/61
    return elf_base + (61 if kind == 'LayerAsset' else 57)

def disk_rel(path):
    """把索引里的原始路径映射成安全的磁盘相对路径。
    索引里可能是绝对路径(如 /weilai/LayerAsset/...) 或含盘符；锚定到资源根
    (LayerAsset/ 或 MapAsset/)，否则去掉开头的 / 与 .. 防止逃逸目录。"""
    p = path.replace('\\', '/')
    for anchor in ('LayerAsset/', 'MapAsset/'):
        i = p.find(anchor)
        if i != -1:
            return p[i:]
    parts = [seg for seg in p.split('/') if seg not in ('', '.', '..')]
    return '/'.join(parts) or 'RES'

# ---- 头/表解析 ------------------------------------------------------------
def parse_header(b):
    elf_base = 4096 if has_elf(b) else 0
    data_start_rel = u32(b, elf_base + 4)          # 头 @4 = 数据区起始(相对)
    data_start = elf_base + data_start_rel
    return elf_base, data_start_rel, data_start

def read_records(b, kind, elf_base, data_start_rel):
    rs = record_start(kind, elf_base)
    n = (data_start_rel - (rs - elf_base)) // 16   # 记录条数
    recs = []
    for i in range(n):
        o = rs + i * 16
        recs.append({'id': u32(b, o), 'offset': u32(b, o+4),
                     'len': u32(b, o+8), 'type': u32(b, o+12)})
    return rs, recs

# ---- 尾部 zlib 文件名索引 --------------------------------------------------
def find_tail_zlib(b, data_end_abs):
    """从数据区末尾向后找 78 9C 的 zlib 块，解压出 md5/size/filename 文本。"""
    sig = b.find(b'\x78\x9c', data_end_abs)
    if sig == -1:
        return {}
    try:
        txt = zlib.decompress(b[sig:]).decode('utf-8', 'replace')
    except Exception:
        return {}
    md5map = {}
    for line in txt.splitlines():
        m = re.match(r'md5:\s*(\w+)\s+size:\s*(\d+)\s+filename:\s*(.+)', line.strip())
        if m:
            md5map[m.group(1)] = m.group(3).strip()
    return md5map

def load_merged(path):
    if not path or not os.path.exists(path):
        return {}
    d = json.load(open(path, encoding='utf-8'))
    rows = d.get('data', d) if isinstance(d, dict) else d
    return {r['id']: r['path'] for r in rows if 'id' in r and 'path' in r}

TYPE_EXT = {2: '.png', 3: '.dat', 4: '.9.png', 7: '.asvg', 8: '.9.asvg',
            9: '.svg', 11: '.xml', 12: '.zip', 13: '.json', 14: '.data'}

def detect_type(data, path):
    """按魔数判定 type（对齐 SoParser.detectFileType）。"""
    low = path.lower()
    if len(data) >= 8 and data[:8] == b'\x89PNG\r\n\x1a\n':
        return 4 if low.endswith('.9.png') else 2
    if data[:3] == b'GIF': return 2
    if data[:2] == b'\xff\xd8': return 2
    if len(data) >= 4 and data[:2] == b'PK' and data[2] in (3,5) and data[3] in (4,6): return 12
    if data[:1] in (b'{', b'['): return 13
    if data[:2] == b'\x1f\x8b': return 14
    if len(data) >= 2 and data[0] == 0x78 and data[1] in (0xda,0x9c,0x01,0x5e): return 14
    if low.endswith('.9.png'): return 4
    if low.endswith('.9.asvg'): return 8
    if low.endswith('.asvg'): return 7
    if low.endswith('.svg'): return 9
    if low.endswith('.dat'): return 3
    ext = low.rsplit('.', 1)[-1] if '.' in low else ''
    if ext in ('gz', 'data'): return 14
    return 14

# ---- 解包 -----------------------------------------------------------------
def unpack(so_path, out_dir, merged_path):
    b = open(so_path, 'rb').read()
    kind = asset_kind(so_path)
    elf_base, data_start_rel, data_start = parse_header(b)
    rs, recs = read_records(b, kind, elf_base, data_start_rel)
    data_end = max((elf_base + r['offset'] + r['len']) for r in recs)
    md5map = find_tail_zlib(b, data_end)
    merged = load_merged(merged_path)

    if not out_dir:
        out_dir = os.path.splitext(so_path)[0]
    os.makedirs(out_dir, exist_ok=True)

    table = []
    named = 0
    zlib_lines = []
    for r in recs:
        blob = b[elf_base + r['offset'] : elf_base + r['offset'] + r['len']]
        md5 = hashlib.md5(blob).hexdigest()
        path = md5map.get(md5) or merged.get(r['id'])
        if path: named += 1
        else:
            path = f"{kind}\\_unknown\\RES_{r['id']}{TYPE_EXT.get(r['type'], '.bin')}"
        rel = disk_rel(path)
        dst = os.path.join(out_dir, rel)
        os.makedirs(os.path.dirname(dst), exist_ok=True)
        open(dst, 'wb').write(blob)
        table.append({'id': r['id'], 'path': path, 'offset': r['offset'],
                      'len': r['len'], 'type': r['type'], 'md5': md5})
        zlib_lines.append(f"md5: {md5}   size: {r['len']}      filename: {path}")

    json.dump({'resources': table}, open(os.path.join(out_dir, 'resource_table.json'), 'w'),
              ensure_ascii=False, indent=2)
    open(os.path.join(out_dir, 'zlib.txt'), 'w', encoding='utf-8').write('\n'.join(zlib_lines) + '\n')
    print(f"[unpack] {so_path}  ({kind}, elf={bool(elf_base)})")
    print(f"         {len(recs)} 个资源 -> {out_dir}  (文件名命中 {named}/{len(recs)})")
    return out_dir

# ---- 打包 -----------------------------------------------------------------
def pack(work_dir, orig_so, out_so, redetect_type=False):
    tbl_path = os.path.join(work_dir, 'resource_table.json')
    if not os.path.exists(tbl_path):
        raise SystemExit(f"缺少 {tbl_path}（请先 unpack 生成，或手动提供）")
    resources = json.load(open(tbl_path, encoding='utf-8'))['resources']
    resources.sort(key=lambda r: r['offset'])        # 保持原始物理顺序

    ob = open(orig_so, 'rb').read()
    kind = asset_kind(orig_so)
    elf_base, data_start_rel, data_start = parse_header(ob)
    rs = record_start(kind, elf_base)
    orig_data_end = max((elf_base + r['offset'] + r['len']) for r in resources)
    # 数据区与尾部 zlib 之间的“间隙”长度不固定(MapAsset=2、LayerAsset=0)：
    # 用原文件里真实的 zlib 起点(78 9C)反推，原样保留这段间隙字节。
    tail_pos = ob.find(b'\x78\x9c', orig_data_end)
    gap = ob[orig_data_end:tail_pos] if tail_pos != -1 else b''

    out = bytearray(ob[:data_start])                 # 头 + 索引表区(作为模板)
    data = bytearray()
    off = data_start_rel                             # 相对偏移，紧密排列(无对齐)
    zlib_lines = []
    for i, r in enumerate(resources):
        fp = os.path.join(work_dir, disk_rel(r['path']))
        if not os.path.exists(fp):
            raise SystemExit(f"文件缺失: {fp}")
        blob = open(fp, 'rb').read()
        typ = detect_type(blob, r['path']) if redetect_type else r['type']
        md5 = hashlib.md5(blob).hexdigest()
        # 原地改写第 i 条记录 {id, offset, len, type}
        o = rs + i * 16
        struct.pack_into('<IIII', out, o, r['id'], off, len(blob), typ)
        data += blob
        zlib_lines.append(f"md5: {md5}   size: {len(blob)}      filename: {r['path']}")
        off += len(blob)

    tail = zlib.compress(('\n'.join(zlib_lines) + '\n').encode('utf-8'), 6)
    result = bytes(out) + bytes(data) + gap + tail

    if not out_so:
        base = os.path.splitext(orig_so)[0]
        out_so = base + '_repacked.so'
    open(out_so, 'wb').write(result)
    print(f"[pack] {work_dir} + {orig_so}  ->  {out_so}  ({len(resources)} 资源, {len(result)} bytes)")
    return out_so

# ---- 列表 -----------------------------------------------------------------
def list_cmd(so_path):
    b = open(so_path, 'rb').read()
    kind = asset_kind(so_path)
    elf_base, dsr, ds = parse_header(b)
    rs, recs = read_records(b, kind, elf_base, dsr)
    data_end = max((elf_base + r['offset'] + r['len']) for r in recs)
    md5map = find_tail_zlib(b, data_end)
    print(f"{kind}  elf={bool(elf_base)}  records={len(recs)}  data_start={ds}  tail_names={len(md5map)}")
    from collections import Counter
    print("type histogram:", dict(Counter(r['type'] for r in recs)))

def main(argv=None):
    ap = argparse.ArgumentParser(description="高德资源包 .so 解包/打包")
    sub = ap.add_subparsers(dest='cmd', required=True)
    a = sub.add_parser('unpack'); a.add_argument('so'); a.add_argument('-o', '--out')
    a.add_argument('--merged', default=os.path.join(os.path.dirname(__file__), 'merged_resource_table.json'))
    p = sub.add_parser('pack'); p.add_argument('dir'); p.add_argument('--orig', required=True)
    p.add_argument('-o', '--out'); p.add_argument('--redetect-type', action='store_true')
    l = sub.add_parser('list'); l.add_argument('so')
    args = ap.parse_args(argv)
    if args.cmd == 'unpack': unpack(args.so, args.out, args.merged)
    elif args.cmd == 'pack': pack(args.dir, args.orig, args.out, args.redetect_type)
    elif args.cmd == 'list': list_cmd(args.so)

if __name__ == '__main__':
    main()
