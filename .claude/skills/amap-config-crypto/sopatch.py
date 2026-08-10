#!/usr/bin/env python3
"""
高德车机版 ELF so 二进制补丁工具（9.5 / ARM64）

注意：这里处理的是**真正的 ELF 动态库**（libautonavi.so / libGbl.so），
与 soasset.py 处理的高德自研资源容器（libMapAsset.so / libLayerAsset.so）不是一回事。

两个功能：
  1) cruise95 —— 9.5 巡航参数（触发时速阈值 / 触发时长阈值）读取与修改
     目标文件：libautonavi.so（AArch64）
     做法：用「前一条指令 + 后一条指令」当特征窗口定位中间那条指令，
           再按 ARM64 指令编码规则重新生成 fmov / movz 立即数。
  2) gbl —— libGbl.so 9.5「不丢灯修复」hex 补丁
     做法：12 字节特征码整块替换（把中间一条 b 改成 ret），双向识别已修复/未修复。

用法：
    python3 sopatch.py cruise95 info <libautonavi.so>
    python3 sopatch.py cruise95 set  <libautonavi.so> --time 3 --speed 3 [-o 输出.so]
    python3 sopatch.py gbl      info  <libGbl.so>
    python3 sopatch.py gbl      patch <libGbl.so> [-o 输出.so]

算法来源：逆向自「自闭 高德工具整合」网页版 So 工具，本脚本为等价 Python 实现。
仅用于用户自己设备上的合法修改。
"""
import sys, os, struct, argparse

# ---------------------------------------------------------------------------
# 通用
# ---------------------------------------------------------------------------

EM_ARM     = 0x28   # ARM32
EM_AARCH64 = 0xB7   # ARM64


def elf_machine(data):
    """读 ELF 头 e_machine（偏移 18，小端 uint16）。不是 ELF 返回 None。"""
    if len(data) < 20 or data[:4] != b"\x7fELF":
        return None
    return struct.unpack_from("<H", data, 18)[0]


def arch_name(m):
    return {EM_ARM: "ARM32", EM_AARCH64: "ARM64"}.get(m, f"未知(0x{m:02X})" if m else "非ELF")


def memmem(hay, needle):
    """返回 needle 在 hay 中所有（不重叠）出现位置。"""
    out, i, n = [], 0, len(needle)
    if n == 0:
        return out
    while True:
        i = hay.find(needle, i)
        if i < 0:
            return out
        out.append(i)
        i += n


def hexs(b):
    return " ".join(f"{x:02x}" for x in b)


# ---------------------------------------------------------------------------
# 一、9.5 巡航参数 (libautonavi.so, AArch64)
# ---------------------------------------------------------------------------
#
# 三条指令组成一个窗口： [before 4B][目标指令 4B][after 4B]
# before/after 当特征码，中间那条才是要改写的。
#
#   时速阈值 -> fmov s0, #imm  / fmov d0, #imm   立即数是 8 位 abcdefgh 编码
#   时间阈值 -> movz w8, #imm16                  单位是毫秒
#
CRUISE95_PATCHES = [
    # name,                    before,              after,               kind
    ("时速阈值1 (fmov s0)", "00013fd6", "2021201e", "speed_s"),
    ("时间阈值   (mov w8)", "cc08ff97", "c945e0d2", "time"),
    ("时速阈值2 (fmov d0)", "c0035fd6", "615a4bfd", "speed_d"),
    ("时速阈值3 (fmov d0)", "1c571214", "615a4bfd", "speed_d"),
]

FMOV_S_BASE = 0x1E201000   # fmov s0, #imm8
FMOV_D_BASE = 0x1E601000   # fmov d0, #imm8
MOVZ_W8_BASE = 0x52800008  # movz w8, #imm16


def encode_fmov_imm8(value):
    """把浮点数编码成 ARM64 fmov 的 8 位立即数 abcdefgh；不可表示返回 None。

    可表示集合：±(1 + m/16) * 2^e，m∈[0,15]，e∈[-3,4]  → 绝对值 0.125 ~ 31.0
    """
    ieee = struct.unpack("<I", struct.pack("<f", float(value)))[0]
    sign = (ieee >> 31) & 1
    exp = (ieee >> 23) & 0xFF
    mant = ieee & 0x7FFFFF
    if mant & 0x7FFFF:            # 尾数低 19 位必须为 0（只留 4 位 m）
        return None
    e = exp - 127
    if e >= 1:
        b, cd = 0, e - 1
    elif e >= -3:
        b, cd = 1, e + 3
    else:
        return None
    if not 0 <= cd <= 3:
        return None
    c, d = (cd >> 1) & 1, cd & 1
    m = (mant >> 19) & 0xF
    return (sign << 7) | (b << 6) | (c << 5) | (d << 4) | m


def decode_fmov_imm8(imm8):
    sign = (imm8 >> 7) & 1
    b = (imm8 >> 6) & 1
    c = (imm8 >> 5) & 1
    d = (imm8 >> 4) & 1
    m = imm8 & 0xF
    e = (1 + 2 * c + d) if b == 0 else (-3 + 2 * c + d)
    return (1 + m / 16.0) * (2.0 ** e) * (-1 if sign else 1)


def find_window(data, before, after):
    """扫描 [before][X][after] 三指令窗口，返回所有 X 的偏移。"""
    hits = []
    i = 0
    while True:
        i = data.find(before, i)
        if i < 0 or i + 12 > len(data):
            break
        if data[i + 8:i + 12] == after:
            hits.append(i + 4)
        i += 1
    return hits


def cruise95_locate(data):
    """定位 4 个补丁点，返回 [(name, kind, offset|None, hits数)]。"""
    out = []
    for name, before_hex, after_hex, kind in CRUISE95_PATCHES:
        before = bytes.fromhex(before_hex)
        after = bytes.fromhex(after_hex)
        hits = find_window(data, before, after)
        out.append((name, kind, hits[0] if len(hits) == 1 else None, len(hits)))
    return out


def cruise95_read(data, sites):
    """按定位结果读出当前时速 / 时长。"""
    speed = time_ms = None
    for name, kind, off, n in sites:
        if off is None:
            continue
        word = struct.unpack_from("<I", data, off)[0]
        if kind.startswith("speed"):
            speed = decode_fmov_imm8((word >> 13) & 0xFF)
        else:
            time_ms = (word >> 5) & 0xFFFF
    return speed, time_ms


def cmd_cruise95_info(a):
    with open(a.file, "rb") as f:
        data = f.read()
    m = elf_machine(data)
    print(f"文件: {a.file}  ({len(data)} bytes)  架构: {arch_name(m)}")
    if m != EM_AARCH64:
        print("⚠️  该工具只针对 9.5 的 AArch64 版 libautonavi.so")
    sites = cruise95_locate(data)
    print(f"\n{'补丁点':<22}{'偏移':<14}{'当前值':<14}状态")
    for name, kind, off, n in sites:
        if off is None:
            print(f"{name:<22}{'-':<14}{'-':<14}{'❌ 未命中' if n == 0 else f'❌ 命中{n}处(不唯一)'}")
            continue
        word = struct.unpack_from("<I", data, off)[0]
        if kind.startswith("speed"):
            cur = f"{decode_fmov_imm8((word >> 13) & 0xFF):g} km/h"
        else:
            cur = f"{((word >> 5) & 0xFFFF) / 1000:g} 秒"
        print(f"{name:<22}{'0x%06X' % off:<14}{cur:<14}✅ 唯一命中")
    speed, time_ms = cruise95_read(data, sites)
    print("\n当前巡航触发条件：",
          f"时速 {speed:g} km/h" if speed is not None else "时速 识别失败", " / ",
          f"时长 {time_ms/1000:g} 秒" if time_ms is not None else "时长 识别失败")
    return 0


def cmd_cruise95_set(a):
    with open(a.file, "rb") as f:
        data = f.read()
    m = elf_machine(data)
    if m != EM_AARCH64 and not a.force:
        print(f"❌ 架构是 {arch_name(m)}，不是 AArch64；确认要继续请加 --force", file=sys.stderr)
        return 2

    time_ms = int(round(a.time * 1000))
    if not 0 <= time_ms <= 0xFFFF:
        print(f"❌ 时长 {a.time} 秒 → {time_ms}ms 超出 movz 16 位立即数范围(0~65535)", file=sys.stderr)
        return 2
    imm8 = encode_fmov_imm8(a.speed)
    if imm8 is None:
        print(f"❌ 时速 {a.speed} 无法用 fmov 8 位立即数表示（可表示：±(1+m/16)×2^e, "
              f"m=0..15, e=-3..4，如 1/2/3/…/31、0.5 步进等）", file=sys.stderr)
        return 2
    real_speed = decode_fmov_imm8(imm8)

    sites = cruise95_locate(data)
    missing = [n for n, k, off, cnt in sites if off is None]
    if missing:
        print("❌ 以下补丁点未唯一定位（版本可能不匹配）：\n  - " + "\n  - ".join(missing),
              file=sys.stderr)
        if not a.force:
            print("确认要只写入已命中的点，请加 --force", file=sys.stderr)
            return 2

    buf = bytearray(data)
    written = []
    for name, kind, off, n in sites:
        if off is None:
            continue
        if kind == "speed_s":
            word = FMOV_S_BASE | (imm8 << 13)
        elif kind == "speed_d":
            word = FMOV_D_BASE | (imm8 << 13)
        else:
            word = MOVZ_W8_BASE | ((time_ms & 0xFFFF) << 5)
        old = struct.unpack_from("<I", buf, off)[0]
        struct.pack_into("<I", buf, off, word)
        written.append((name, off, old, word))

    # 写后回读验证
    sites2 = cruise95_locate(bytes(buf))
    speed2, time2 = cruise95_read(bytes(buf), sites2)

    out = a.output or f"{os.path.splitext(a.file)[0]}_{a.time:g}秒{real_speed:g}码.so"
    with open(out, "wb") as f:
        f.write(buf)

    for name, off, old, new in written:
        print(f"✏️  {name:<22} 0x{off:06X}  {old:08x} -> {new:08x}")
    print(f"\n回读验证：时速 {speed2:g} km/h / 时长 {time2/1000:g} 秒"
          if speed2 is not None and time2 is not None else "\n⚠️ 回读验证失败")
    print(f"📥 已导出: {out}  ({len(buf)} bytes)")
    return 0


# ---------------------------------------------------------------------------
# 二、libGbl.so 9.5 不丢灯修复
# ---------------------------------------------------------------------------
#
# 12 字节特征窗口，中间那条 b 改成 ret（c0 03 5f d6），跳过丢灯判断。
#
GBL_PATCHES = [
    {
        "id": "no_lose_light_cruise_95",
        "arch": EM_AARCH64,
        "name": "巡航不丢灯 (9.5 ARM64)",
        "orig": "fd7bc6a854000014e570ffd0",
        "patched": "fd7bc6a8c0035fd6e570ffd0",
        "desc": "CruiseTrafficSignalLightLayer::UpdateCruiseTrafficLightCountdown\n"
                "          空数据时的 b ClearAllItems（尾调用）-> ret，即空推送不再清空图层",
    },
    {
        "id": "no_lose_light_guide_95",
        "arch": EM_AARCH64,
        "name": "导航不丢灯 (9.5 ARM64)",
        "orig": "e00313aa36080094f40313aa",
        "patched": "e00313aa1f2003d5f40313aa",
        "desc": "GuideTrafficSignalLightManager::UpdateTrafficLightCountdown\n"
                "          空数据时的 bl ResetData -> nop，即空推送不再复位显示状态",
    },
]


def gbl_scan(data):
    """返回 [(patch, state, offset)]，state ∈ unpatched/patched/unknown/arch_skip。"""
    m = elf_machine(data)
    out = []
    for p in GBL_PATCHES:
        if m != p["arch"]:
            out.append((p, "arch_skip", None))
            continue
        orig = bytes.fromhex(p["orig"])
        pat = bytes.fromhex(p["patched"])
        op, pp = memmem(data, orig), memmem(data, pat)
        if len(op) == 1:
            out.append((p, "unpatched", op[0]))
        elif len(pp) == 1:
            out.append((p, "patched", pp[0]))
        else:
            out.append((p, "unknown", None))
    return out


_GBL_STATE_TXT = {
    "unpatched": "⚪ 未修复（可打补丁）",
    "patched": "✅ 已修复",
    "unknown": "❌ 未识别（版本不同）",
    "arch_skip": "➖ 架构不匹配，跳过",
}


def cmd_gbl_info(a):
    with open(a.file, "rb") as f:
        data = f.read()
    m = elf_machine(data)
    print(f"文件: {a.file}  ({len(data)} bytes)  架构: {arch_name(m)}\n")
    for p, state, off in gbl_scan(data):
        print(f"{p['name']}   [id={p['id']}]")
        print(f"  说明  : {p['desc']}")
        print(f"  原始  : {hexs(bytes.fromhex(p['orig']))}")
        print(f"  目标  : {hexs(bytes.fromhex(p['patched']))}")
        print(f"  偏移  : {'0x%06X' % off if off is not None else '-'}")
        print(f"  状态  : {_GBL_STATE_TXT[state]}\n")
    return 0


def cmd_gbl_patch(a):
    with open(a.file, "rb") as f:
        data = f.read()
    results = gbl_scan(data)
    only = set(filter(None, (a.only or "").split(","))) if a.only else None
    if only:
        unknown = only - {p["id"] for p in GBL_PATCHES}
        if unknown:
            print(f"❌ 未知补丁 id: {', '.join(sorted(unknown))}", file=sys.stderr)
            return 2
    todo = [(p, off) for p, state, off in results
            if state == "unpatched" and (only is None or p["id"] in only)]

    for p, state, off in results:
        tag = "" if only is None or p["id"] in only else "  （--only 未选中，跳过）"
        print(f"{p['name']:<26}{_GBL_STATE_TXT[state]}"
              + (f"  @0x{off:06X}" if off is not None else "") + tag)

    if not todo:
        print("\n没有需要写入的补丁，未导出。")
        return 1

    buf = bytearray(data)
    for p, off in todo:
        pat = bytes.fromhex(p["patched"])
        buf[off:off + len(pat)] = pat
        print(f"\n✏️  {p['name']} @0x{off:06X}\n    {hexs(bytes.fromhex(p['orig']))}"
              f"\n -> {hexs(pat)}")

    # 写后回读验证（只验本次写入的补丁）
    written_ids = {p["id"] for p, _ in todo}
    for p, state, off in gbl_scan(bytes(buf)):
        if p["id"] in written_ids and state != "patched":
            print(f"❌ 回读验证失败：{p['name']} 状态={state}", file=sys.stderr)
            return 3

    out = a.output or f"{os.path.splitext(a.file)[0]}_patched.so"
    with open(out, "wb") as f:
        f.write(buf)
    print(f"\n✅ 回读验证通过\n📥 已导出: {out}  ({len(buf)} bytes)")
    return 0


# ---------------------------------------------------------------------------

def main(argv=None):
    ap = argparse.ArgumentParser(description="高德车机 9.5 so 二进制补丁（巡航参数 / 不丢灯）")
    sub = ap.add_subparsers(dest="tool", required=True)

    c = sub.add_parser("cruise95", help="9.5 巡航参数（libautonavi.so, AArch64）")
    cs = c.add_subparsers(dest="action", required=True)
    ci = cs.add_parser("info", help="读取当前巡航时速/时长阈值")
    ci.add_argument("file")
    ci.set_defaults(func=cmd_cruise95_info)
    cw = cs.add_parser("set", help="写入新的巡航时速/时长阈值并导出")
    cw.add_argument("file")
    cw.add_argument("--time", type=float, required=True, help="触发时长（秒），如 3")
    cw.add_argument("--speed", type=float, required=True, help="触发时速（km/h），如 3")
    cw.add_argument("-o", "--output", help="输出路径")
    cw.add_argument("--force", action="store_true", help="架构不符或有补丁点未命中时仍写入")
    cw.set_defaults(func=cmd_cruise95_set)

    g = sub.add_parser("gbl", help="libGbl.so 9.5 不丢灯修复")
    gs = g.add_subparsers(dest="action", required=True)
    gi = gs.add_parser("info", help="扫描补丁状态")
    gi.add_argument("file")
    gi.set_defaults(func=cmd_gbl_info)
    gp = gs.add_parser("patch", help="打补丁并导出")
    gp.add_argument("file")
    gp.add_argument("-o", "--output", help="输出路径")
    gp.add_argument("--only", help="只应用指定补丁（逗号分隔的 id，见 info 输出），默认全部")
    gp.set_defaults(func=cmd_gbl_patch)

    a = ap.parse_args(argv)
    return a.func(a)


if __name__ == "__main__":
    sys.exit(main())
