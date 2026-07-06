#!/usr/bin/env python3
"""
高德车机版配置文件 加密/解密工具 (AES-128-CBC + 定长外壳)

依赖：优先用系统 openssl（快）；若不可用，自动回退到内置纯 Python AES（无第三方依赖）。

外壳格式（明文在加密前被包成）：
    [ 16B 前缀prefix ][ 4B 明文长度(小端 uint32) ][ 真正明文 ][ 补0 至16字节对齐 ]
然后整体做 AES-128-CBC / NoPadding 加密。

用法：
    python3 crypto.py <文件路径> [--mode 8.5|7.5] [--key K --iv IV --prefix P] [-o 输出路径]

行为按扩展名自动判断（也可用 --op encrypt|decrypt 强制）：
    .dat  -> 解密为 .txt
    .txt  -> 加密为 .dat
    .json -> 能被 JSON.parse 视为明文则加密(_encrypted.json)，否则解密(_decrypt.json)
"""
import sys, os, struct, json, argparse, subprocess, shutil

PRESETS = {
    "7.5": {"key": "Jbga21autoj7ZAsF", "iv": "Jbga21autoj7ZAsF", "prefix": "1234567812345678"},
    "8.5": {"key": "Yqwr31autou4PbNM", "iv": "1234567812345678", "prefix": "9zxc46abc7o28l4t"},
}

# ---------------------------------------------------------------------------
# AES-128-CBC / NoPadding —— openssl 优先，纯 Python 回退
# ---------------------------------------------------------------------------

def _openssl(op, data, key, iv):
    exe = shutil.which("openssl")
    if not exe:
        return None
    args = [exe, "enc", "-aes-128-cbc", "-nopad",
            "-K", key.encode().hex(), "-iv", iv.encode().hex()]
    if op == "decrypt":
        args.insert(2, "-d")
    try:
        p = subprocess.run(args, input=data, stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE)
        if p.returncode != 0:
            return None
        return p.stdout
    except Exception:
        return None


# --- 纯 Python AES-128 回退实现（仅在无 openssl 时使用）---------------------

def _build_sbox():
    p = q = 1
    sbox = [0] * 256
    while True:
        p = p ^ ((p << 1) & 0xff) ^ (0x1b if p & 0x80 else 0)
        q ^= (q << 1) & 0xff; q ^= (q << 2) & 0xff; q ^= (q << 4) & 0xff
        if q & 0x80: q ^= 0x09
        q &= 0xff
        x = q ^ ((q << 1 | q >> 7) & 0xff) ^ ((q << 2 | q >> 6) & 0xff) \
              ^ ((q << 3 | q >> 5) & 0xff) ^ ((q << 4 | q >> 4) & 0xff)
        sbox[p] = (x ^ 0x63) & 0xff
        if p == 1:
            break
    sbox[0] = 0x63
    return sbox

_SBOX = _build_sbox()
_INV = [0] * 256
for _i, _v in enumerate(_SBOX):
    _INV[_v] = _i

def _mul(a, b):
    r = 0
    for _ in range(8):
        if b & 1: r ^= a
        hi = a & 0x80; a = (a << 1) & 0xff
        if hi: a ^= 0x1b
        b >>= 1
    return r

def _key_schedule(key):
    Rcon = [0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0x1b,0x36]
    w = [list(key[i*4:i*4+4]) for i in range(4)]
    for i in range(4, 44):
        t = list(w[i-1])
        if i % 4 == 0:
            t = t[1:] + t[:1]
            t = [_SBOX[b] for b in t]
            t[0] ^= Rcon[i//4 - 1]
        w.append([w[i-4][j] ^ t[j] for j in range(4)])
    return w

def _enc_block(blk, w):
    s = [[blk[r+4*c] for c in range(4)] for r in range(4)]
    def addrk(rnd):
        for c in range(4):
            for r in range(4): s[r][c] ^= w[rnd*4+c][r]
    addrk(0)
    for rnd in range(1, 10):
        for r in range(4):
            for c in range(4): s[r][c] = _SBOX[s[r][c]]
        for r in range(1, 4): s[r] = s[r][r:] + s[r][:r]
        for c in range(4):
            a = [s[r][c] for r in range(4)]
            s[0][c] = _mul(a[0],2)^_mul(a[1],3)^a[2]^a[3]
            s[1][c] = a[0]^_mul(a[1],2)^_mul(a[2],3)^a[3]
            s[2][c] = a[0]^a[1]^_mul(a[2],2)^_mul(a[3],3)
            s[3][c] = _mul(a[0],3)^a[1]^a[2]^_mul(a[3],2)
        addrk(rnd)
    for r in range(4):
        for c in range(4): s[r][c] = _SBOX[s[r][c]]
    for r in range(1, 4): s[r] = s[r][r:] + s[r][:r]
    addrk(10)
    return bytes(s[r][c] for c in range(4) for r in range(4))

def _dec_block(blk, w):
    s = [[blk[r+4*c] for c in range(4)] for r in range(4)]
    def addrk(rnd):
        for c in range(4):
            for r in range(4): s[r][c] ^= w[rnd*4+c][r]
    addrk(10)
    for rnd in range(9, 0, -1):
        for r in range(1, 4): s[r] = s[r][-r:] + s[r][:-r]
        for r in range(4):
            for c in range(4): s[r][c] = _INV[s[r][c]]
        addrk(rnd)
        for c in range(4):
            a = [s[r][c] for r in range(4)]
            s[0][c] = _mul(a[0],14)^_mul(a[1],11)^_mul(a[2],13)^_mul(a[3],9)
            s[1][c] = _mul(a[0],9)^_mul(a[1],14)^_mul(a[2],11)^_mul(a[3],13)
            s[2][c] = _mul(a[0],13)^_mul(a[1],9)^_mul(a[2],14)^_mul(a[3],11)
            s[3][c] = _mul(a[0],11)^_mul(a[1],13)^_mul(a[2],9)^_mul(a[3],14)
    for r in range(1, 4): s[r] = s[r][-r:] + s[r][:-r]
    for r in range(4):
        for c in range(4): s[r][c] = _INV[s[r][c]]
    addrk(0)
    return bytes(s[r][c] for c in range(4) for r in range(4))

def _py_cbc(op, data, key, iv):
    kb = key.encode(); ivb = iv.encode()
    w = _key_schedule(kb)
    out = bytearray(); prev = ivb
    for i in range(0, len(data), 16):
        blk = data[i:i+16]
        if op == "decrypt":
            d = _dec_block(blk, w)
            out += bytes(x ^ y for x, y in zip(d, prev)); prev = blk
        else:
            x = bytes(a ^ b for a, b in zip(blk, prev))
            e = _enc_block(x, w); out += e; prev = e
    return bytes(out)

def aes_cbc(op, data, key, iv):
    if len(data) % 16:
        raise ValueError("密文长度不是 16 的倍数")
    r = _openssl(op, data, key, iv)
    return r if r is not None else _py_cbc(op, data, key, iv)

# ---------------------------------------------------------------------------
# 外壳打包/解包
# ---------------------------------------------------------------------------

def decrypt(data, key, iv):
    pt = aes_cbc("decrypt", data, key, iv)
    if len(pt) < 20:
        raise ValueError("解密失败：数据长度不足")
    ln = struct.unpack("<I", pt[16:20])[0]
    if ln <= 0 or ln > len(pt) - 20:
        raise ValueError("解密失败：长度字段异常，可能是密钥/预设不匹配（试试切换 7.5 / 8.5）")
    return pt[20:20+ln]

def encrypt(data, key, iv, prefix):
    if len(prefix) != 16:
        raise ValueError("prefix 必须是 16 字节")
    body = prefix.encode() + struct.pack("<I", len(data)) + data
    pad = (-len(body)) % 16
    body += b"\x00" * pad
    return aes_cbc("encrypt", body, key, iv)

# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def looks_like_json(data):
    try:
        json.loads(data.decode("utf-8"))
        return True
    except Exception:
        return False

def decide_op(path, data, forced):
    if forced:
        return forced
    ext = os.path.splitext(path)[1].lower()
    if ext == ".dat":
        return "decrypt"
    if ext == ".txt":
        return "encrypt"
    if ext == ".json":
        return "encrypt" if looks_like_json(data) else "decrypt"
    raise ValueError(f"无法从扩展名判断操作：{ext}，请用 --op encrypt|decrypt 指定")

def default_output(path, op):
    base, ext = os.path.splitext(path)
    ext = ext.lower()
    if op == "decrypt":
        if ext == ".dat":
            return base + ".txt"
        return base + "_decrypt.json"      # .json
    else:  # encrypt
        if ext == ".txt":
            return base + ".dat"
        b = base.replace("_decrypt", "")
        return b + "_encrypted.json"        # .json

def main(argv=None):
    ap = argparse.ArgumentParser(description="高德车机配置 加密/解密 (AES-128-CBC)")
    ap.add_argument("file", help="输入文件 .dat/.txt/.json")
    ap.add_argument("--mode", default="8.5", choices=["7.5", "8.5", "custom"],
                    help="预设密钥档位，默认 8.5")
    ap.add_argument("--op", choices=["encrypt", "decrypt"],
                    help="强制指定操作（默认按扩展名/内容自动判断）")
    ap.add_argument("--key");  ap.add_argument("--iv");  ap.add_argument("--prefix")
    ap.add_argument("-o", "--output", help="输出路径")
    ap.add_argument("--stdout", action="store_true", help="结果打印到标准输出而非写文件")
    a = ap.parse_args(argv)

    if a.mode == "custom":
        if not (a.key and a.iv):
            ap.error("custom 模式必须提供 --key 和 --iv（加密还需 --prefix）")
        key, iv, prefix = a.key, a.iv, a.prefix or "1234567812345678"
    else:
        p = PRESETS[a.mode]
        key, iv, prefix = a.key or p["key"], a.iv or p["iv"], a.prefix or p["prefix"]
    if len(key) != 16 or len(iv) != 16:
        ap.error("KEY 和 IV 都必须是 16 字节")

    with open(a.file, "rb") as f:
        data = f.read()
    op = decide_op(a.file, data, a.op)

    if op == "decrypt":
        result = decrypt(data, key, iv)
    else:
        result = encrypt(data, key, iv, prefix)

    if a.stdout:
        sys.stdout.buffer.write(result)
        return 0
    out = a.output or default_output(a.file, op)
    with open(out, "wb") as f:
        f.write(result)
    print(f"[{op}] mode={a.mode}  {a.file}  ->  {out}  ({len(result)} bytes)")
    return 0

if __name__ == "__main__":
    sys.exit(main())
