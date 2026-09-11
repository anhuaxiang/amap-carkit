#!/usr/bin/env python3
"""
高德车机版 APK 三合一：一键 去签 / 共存 / 悬浮

逆向自「小德工具箱」toolbox.apk（com.xiaode.toolbox），本脚本为等价的 Python 实现。

⚠️ 根因（实测确认）：高德有**防篡改**——只要用非原厂密钥重签名，启动时就闪退。
   证据：只做「剥旧签名 + 重签名」不改任何代码也闪退；原签名 ID 是 MINIMAP_（高德的）。
   所以**任何改动都必须配合"签名绕过"**，否则装上必闪退。

绕过做法（忠实复刻 toolbox 的 doInjectFloat，实测这个版本能过）：**改写 classes.dex 里的已有类**——
把 `com/autonavi/amapauto/app/MapApplicationProxy` 覆盖成「父类改为 bin/mt/signature/KillerApplication」
的版本（KillerApplication 在 <clinit>/onCreate 里用反射替换 PackageInfo.CREATOR、清 sPackageInfoCache，
把签名伪造回**高德原厂证书**），并**覆盖阿里 SecurityGuard 的 com/alibaba/wireless/security/framework/e
等已有类以削弱 native 安全框架校验**，同时补进 bin/mt/signature/** 与 floatapp/**。manifest 不动。

关键：这些是**覆盖已有同名类**，必须改进 classes.dex 本身（不能只加 classes2.dex——同名类 classes.dex 优先）。
做法：`smali` 把整套 assets/smali_inject 汇编成 overlay.dex，再用 dexlib2（MergeDex.java）把它
**合并进 classes.dex，同名类以 overlay 为准**。只用 smali 汇编 + dexlib2 合并，**不需要 baksmali**。

⚠️ 因为覆盖的是**特定高德版本的已有类**，assets/smali_inject 抠自 toolbox 目标版本，
   **换高德版本可能不匹配/启动崩**——和 toolbox 一样吃版本。

子命令：
  qiansign —— 去签：合并签名绕过（不激活悬浮）。让重签后的高德过掉自校验能启动。
  coexist  —— 共存：在去签基础上，再改 package / 权限名 / provider authorities，可与原版并存。
  float    —— 悬浮：去签 + 激活 floatapp/*（系统悬浮窗）。**实验性**。
  sign     —— 仅剥旧签名 + 重签名（通用工具；对高德单用会闪退，要用 qiansign）。
  info     —— 读 manifest 包名 / application / 权限 / authorities。

三个改造都会：剥 META-INF 旧签名 →（有 zipalign 就对齐）→ 重签名。
签名：用 apksig 做 **v1+v2**（与原 toolbox 一致，首次自动下载 apksig，不需要 Android SDK）；
     失败才回退 jarsigner v1。密钥固定在 ~/.config/amap-toolbox/。
smali 工具链：首次自动下载到 ~/.config/amap-toolbox/smali/（可用 SMALI_CMD 覆盖）。

⚠️ 共存的 apiKey 限制：高德地图 SDK 的 apiKey 绑定「包名 + 签名」。共存改了包名，
   即便签名被伪造回原厂，包名仍不符 → 可能地图无法加载/降级（但通常不再闪退）。
仅用于用户自己设备上的合法修改。
"""
import sys, os, struct, argparse, zipfile, shutil, subprocess, tempfile, glob, urllib.request

SKILL_DIR = os.path.dirname(os.path.abspath(__file__))
SMALI_ASSET_DIR = os.path.join(SKILL_DIR, "assets", "smali_inject")

CONF_DIR = os.path.expanduser("~/.config/amap-toolbox")
KEYSTORE = os.path.join(CONF_DIR, "amap.keystore")
SMALI_CACHE = os.path.join(CONF_DIR, "smali")
KS_PASS = "amaptool"
KS_ALIAS = "amapkey"
API_LEVEL = 33

SIG_ENTRY_SUFFIX = (".SF", ".RSA", ".DSA", ".EC")

# 覆盖注入入口：把该类覆盖成 extends KillerApplication 的版本（assets 里已是改好的）
APP_PROXY_SMALI = "com/autonavi/amapauto/app/MapApplicationProxy.smali"
# MapApplicationProxy.onCreate 里拉起悬浮的那行（去签时删掉，只保留签名绕过）
FLOAT_LOAD_MARK = "Lfloatapp/AutoamapPluginManage;->load"
MERGE_MAIN = "MergeDex"
MERGE_SRC = os.path.join(SKILL_DIR, "MergeDex.java")
SIGN_MAIN = "SignApk"
SIGN_SRC = os.path.join(SKILL_DIR, "SignApk.java")
# apksig：v1+v2 签名（不带 SDK 也能 v2）。首次自动下载到 smali 缓存目录。
APKSIG_URL = "https://dl.google.com/dl/android/maven2/com/android/tools/build/apksig/8.7.3/apksig-8.7.3.jar"
APKSIG_JAR = "apksig.jar"

# smali 工具链（首次自动下载）
_GG = "https://dl.google.com/dl/android/maven2/com/android/tools/smali"
_MC = "https://repo1.maven.org/maven2"
SMALI_JARS = [
    (f"{_GG}/smali/3.0.9/smali-3.0.9.jar", "smali.jar"),
    (f"{_GG}/smali-dexlib2/3.0.9/smali-dexlib2-3.0.9.jar", "smali-dexlib2.jar"),
    (f"{_GG}/smali-util/3.0.9/smali-util-3.0.9.jar", "smali-util.jar"),
    (f"{_MC}/org/antlr/antlr-runtime/3.5.2/antlr-runtime-3.5.2.jar", "antlr-runtime.jar"),
    (f"{_MC}/org/antlr/stringtemplate/3.2.1/stringtemplate-3.2.1.jar", "stringtemplate.jar"),
    (f"{_MC}/com/beust/jcommander/1.64/jcommander-1.64.jar", "jcommander.jar"),
    (f"{_MC}/com/google/guava/guava/31.1-android/guava-31.1-android.jar", "guava.jar"),
    (f"{_MC}/com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.jar", "jsr305.jar"),
]
SMALI_MAIN = "com.android.tools.smali.smali.Main"


# ===========================================================================
# 通用 little-endian 读取
# ===========================================================================
def u16(b, i):
    return b[i] | (b[i + 1] << 8)


def u32(b, i):
    return b[i] | (b[i + 1] << 8) | (b[i + 2] << 16) | (b[i + 3] << 24)


def p16(v):
    return struct.pack("<H", v & 0xFFFF)


def p32(v):
    return struct.pack("<I", v & 0xFFFFFFFF)


# ===========================================================================
# 一、AXML（二进制 AndroidManifest）—— 纯 Python，移植自 AxmlUtils
# ===========================================================================
STRING_POOL_TYPE = 0x0001
START_ELEMENT = 0x0102
TYPE_STRING = 3


def _find_string_pool(b):
    total = u32(b, 4)
    i = 8
    while i + 8 <= total and i + 8 <= len(b):
        ctype = u16(b, i)
        csize = u32(b, i + 4)
        if csize <= 0 or i + csize > len(b):
            return None
        if ctype == STRING_POOL_TYPE:
            return i
        i += csize
    return None


def _read_utf8_len(b, i):
    x = b[i]
    if x & 0x80 == 0:
        return x, i + 1
    return ((x & 0x7F) << 8) | b[i + 1], i + 2


def _decode_string(b, pos, utf8):
    if not utf8:
        n = u16(b, pos)
        return b[pos + 2: pos + 2 + n * 2].decode("utf-16-le")
    _clen, nxt = _read_utf8_len(b, pos)
    blen, nxt2 = _read_utf8_len(b, nxt)
    return b[nxt2: nxt2 + blen].decode("utf-8")


def _decode_pool_at(b, sp):
    count = u32(b, sp + 8)
    flags = u32(b, sp + 16)
    utf8 = bool(flags & 256)
    data_base = sp + u32(b, sp + 20)
    out = []
    for k in range(count):
        off = u32(b, sp + 28 + k * 4)
        out.append(_decode_string(b, data_base + off, utf8))
    return out


def _encode_utf8_len(n):
    if n < 128:
        return bytes([n])
    return bytes([0x80 | (n >> 8), n & 0xFF])


def _encode_string(s, utf8):
    if utf8:
        raw = s.encode("utf-8")
        return _encode_utf8_len(len(s)) + _encode_utf8_len(len(raw)) + raw + b"\x00"
    raw = s.encode("utf-16-le")
    return bytes([len(s) & 0xFF, (len(s) >> 8) & 0xFF]) + raw + b"\x00\x00"


def _build_pool(b, sp, strings):
    flags = u32(b, sp + 16)
    utf8 = bool(flags & 256)
    new_flags = flags & ~0x201
    encoded = [_encode_string(s, utf8) for s in strings]
    body = b"".join(encoded)
    pad = (4 - (len(body) % 4)) % 4
    strings_start = len(strings) * 4 + 28
    total = len(body) + strings_start + pad
    out = bytearray()
    out += p16(1) + p16(28)
    out += p32(total)
    out += p32(len(strings))
    out += p32(0)
    out += p32(new_flags)
    out += p32(strings_start)
    out += p32(0)
    off = 0
    for e in encoded:
        out += p32(off)
        off += len(e)
    out += body
    out += b"\x00" * pad
    assert len(out) == total, f"pool size mismatch {len(out)} != {total}"
    return bytes(out)


def _walk_elements(b, pool):
    """yield (tag, attr_name, value_str)（仅 string 型属性）。"""
    total = u32(b, 4)
    i = 8
    while i + 8 <= total and i + 8 <= len(b):
        ctype = u16(b, i)
        csize = u32(b, i + 4)
        if csize <= 0 or i + csize > len(b):
            return
        if ctype == START_ELEMENT:
            hs = u16(b, i + 2)
            ext = i + hs
            if ext + 14 <= len(b):
                tag = pool[u32(b, ext + 4)] if u32(b, ext + 4) < len(pool) else None
                attr_start = u16(b, ext + 8)
                attr_size = u16(b, ext + 10)
                attr_count = u16(b, ext + 12)
                a = ext + attr_start
                for _ in range(attr_count):
                    if a + 20 > len(b):
                        break
                    name_idx = u32(b, a + 4)
                    dtype = b[a + 15]
                    dval = u32(b, a + 16)
                    if tag is not None and dtype == TYPE_STRING and name_idx < len(pool) and dval < len(pool):
                        yield tag, pool[name_idx], pool[dval]
                    a += attr_size
        i += csize


def axml_manifest_facts(b):
    """返回 (package, application_name, [权限...], [authorities...])。"""
    sp = _find_string_pool(b)
    pool = _decode_pool_at(b, sp)
    pkg = app = None
    perms, auths = [], []
    for tag, attr, val in _walk_elements(b, pool):
        if tag == "manifest" and attr == "package":
            pkg = val
        elif tag == "application" and attr == "name":
            app = val
        elif tag in ("permission", "uses-permission") and attr == "name":
            perms.append(val)
        elif tag == "provider" and attr == "authorities":
            auths.append(val)
    return pkg, app, perms, auths


def axml_apply(b, mapping):
    """按 {旧字符串: 新字符串} 重建字符串池并更新文件总长。无改动返回 None。"""
    sp = _find_string_pool(b)
    if sp is None:
        raise ValueError("AXML 未找到字符串池")
    pool = _decode_pool_at(b, sp)
    if not any(s in mapping and mapping[s] != s for s in pool):
        return None
    new_pool = [mapping.get(s, s) for s in pool]
    chunk = _build_pool(b, sp, new_pool)
    old_size = u32(b, sp + 4)
    out = bytearray(b[:sp] + chunk + b[sp + old_size:])
    struct.pack_into("<I", out, 4, len(out))
    return bytes(out)


def coexist_mapping(pkg, newpkg, perms, auths):
    """共存：算出 package / 权限名 / authorities 的字符串替换表。"""
    m = {pkg: newpkg}
    for val in perms:
        if val.startswith(pkg):
            m[val] = newpkg + val[len(pkg):]
    for val in auths:
        if val.startswith(pkg):
            m[val] = newpkg + val[len(pkg):]
        else:
            m[val] = newpkg + "_" + val
    return m


# ===========================================================================
# 二、ZIP 重打包（移植 ApkPatcher.repackApk）
# ===========================================================================
def _is_sig_entry(name):
    up = name.upper()
    if not up.startswith("META-INF/"):
        return False
    return up == "META-INF/MANIFEST.MF" or up.endswith(SIG_ENTRY_SUFFIX)


def zip_repack(apk_path, replacements, out_path, strip_sig=True):
    """写进新 APK。STORED 项（.so / resources.arsc）保留原压缩方式，其余 DEFLATE。"""
    written = set()
    with zipfile.ZipFile(apk_path, "r") as zin, \
         zipfile.ZipFile(out_path, "w") as zout:
        for info in zin.infolist():
            name = info.filename
            if strip_sig and _is_sig_entry(name):
                continue
            if name in replacements:
                zi = zipfile.ZipInfo(name, date_time=info.date_time)
                zi.compress_type = zipfile.ZIP_DEFLATED
                zi.external_attr = info.external_attr
                zout.writestr(zi, replacements[name])
                written.add(name)
            else:
                data = zin.read(name)
                zi = zipfile.ZipInfo(name, date_time=info.date_time)
                zi.compress_type = info.compress_type
                zi.external_attr = info.external_attr
                zout.writestr(zi, data)
        for name, data in replacements.items():
            if name not in written:
                zi = zipfile.ZipInfo(name)
                zi.compress_type = zipfile.ZIP_DEFLATED
                zout.writestr(zi, data)


def extract_entry(apk_path, entry):
    with zipfile.ZipFile(apk_path, "r") as z:
        try:
            return z.read(entry)
        except KeyError:
            return None


# ===========================================================================
# 三、Java / 工具探测
# ===========================================================================
_JAVA_ENV = None


def java_env():
    global _JAVA_ENV
    if _JAVA_ENV is not None:
        return _JAVA_ENV
    env = dict(os.environ)
    home = env.get("JAVA_HOME")
    if not (home and os.path.exists(os.path.join(home, "bin", "java"))):
        home = None
        try:
            out = subprocess.run(["/usr/libexec/java_home"], capture_output=True, text=True)
            if out.returncode == 0 and out.stdout.strip():
                home = out.stdout.strip()
        except Exception:
            pass
        if not home:
            for pat in ("/opt/homebrew/opt/openjdk*/libexec/openjdk.jdk/Contents/Home",
                        "/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home",
                        "/usr/local/opt/openjdk*/libexec/openjdk.jdk/Contents/Home",
                        "/Library/Java/JavaVirtualMachines/*/Contents/Home"):
                cands = sorted(glob.glob(pat))
                if cands:
                    home = cands[-1]
                    break
    if home:
        env["JAVA_HOME"] = home
        env["PATH"] = os.path.join(home, "bin") + os.pathsep + env.get("PATH", "")
    _JAVA_ENV = env
    return env


def _java_bin():
    home = java_env().get("JAVA_HOME")
    if home:
        j = os.path.join(home, "bin", "java")
        if os.path.exists(j):
            return j
    return shutil.which("java") or "java"


def _run(cmd, **kw):
    kw.setdefault("check", True)
    kw.setdefault("capture_output", True)
    kw.setdefault("text", True)
    kw.setdefault("env", java_env())
    return subprocess.run(cmd, **kw)


def _sdk_build_tools_tool(name):
    for root in (os.environ.get("ANDROID_HOME"), os.environ.get("ANDROID_SDK_ROOT")):
        if not root:
            continue
        cands = sorted(glob.glob(os.path.join(root, "build-tools", "*", name)))
        if cands:
            return cands[-1]
    return None


def find_tool(name):
    return shutil.which(name) or _sdk_build_tools_tool(name)


# ===========================================================================
# 四、smali 工具链（首次自动下载到缓存）
# ===========================================================================
def smali_classpath():
    """确保 smali 工具链 jar 就位（首次自动下载），返回 classpath 字符串。"""
    os.makedirs(SMALI_CACHE, exist_ok=True)
    missing = [(url, fn) for url, fn in SMALI_JARS
               if not os.path.exists(os.path.join(SMALI_CACHE, fn))]
    if missing:
        print(f"[smali] 首次使用，下载 smali 工具链到 {SMALI_CACHE} ...")
        for url, fn in missing:
            dst = os.path.join(SMALI_CACHE, fn)
            try:
                urllib.request.urlretrieve(url, dst)
                print(f"  ok {fn} ({os.path.getsize(dst)} B)")
            except Exception as e:
                raise RuntimeError(
                    f"下载 smali 工具链失败：{url}\n  {e}\n"
                    "  可手动放好 jar 到该目录，或设 SMALI_CMD 指定完整 smali 汇编命令。")
    jars = [j for j in sorted(glob.glob(os.path.join(SMALI_CACHE, "*.jar")))
            if os.path.basename(j) != APKSIG_JAR]  # apksig 只给签名用，别混进 smali classpath
    return os.pathsep.join(jars)


def ensure_smali_cmd():
    """返回可执行的 smali 命令前缀（list）。SMALI_CMD 环境变量可覆盖。"""
    env_cmd = os.environ.get("SMALI_CMD")
    if env_cmd:
        return env_cmd.split()
    return [_java_bin(), "-cp", smali_classpath(), SMALI_MAIN]


def smali_assemble(smali_dir, out_dex):
    cmd = ensure_smali_cmd() + ["assemble", smali_dir, "-a", str(API_LEVEL), "-o", out_dex]
    _run(cmd)
    with open(out_dex, "rb") as f:
        return f.read()


def _ensure_merge_class():
    """把内置 MergeDex.java 编译到缓存，返回 (classdir, classpath)。"""
    cp = smali_classpath()
    outdir = os.path.join(SMALI_CACHE, "merge")
    os.makedirs(outdir, exist_ok=True)
    cls = os.path.join(outdir, MERGE_MAIN + ".class")
    if not os.path.exists(cls) or os.path.getmtime(cls) < os.path.getmtime(MERGE_SRC):
        javac = os.path.join(java_env().get("JAVA_HOME", ""), "bin", "javac")
        if not os.path.exists(javac):
            javac = shutil.which("javac") or "javac"
        _run([javac, "-cp", cp, "-d", outdir, MERGE_SRC])
    return outdir, cp


def dex_merge(base_dex, overlay_dex, out_dex):
    """用 dexlib2 把 overlay 合并进 base（同名类以 overlay 为准）。"""
    outdir, cp = _ensure_merge_class()
    cp2 = cp + os.pathsep + outdir
    _run([_java_bin(), "-cp", cp2, MERGE_MAIN, base_dex, overlay_dex, out_dex, str(API_LEVEL)])


def build_merged_classes_dex(base_dex_bytes, float_on, workdir):
    """把 assets/smali_inject 汇编成 overlay 并覆盖合并进 base classes.dex。返回新 dex 字节。
    float_on=False（去签）时删掉 MapApplicationProxy 里拉起悬浮的那行（floatapp 类仍在但不激活）。"""
    # 拷贝整套注入 smali 到工作目录
    src = os.path.join(workdir, "smali_src")
    shutil.copytree(SMALI_ASSET_DIR, src)
    if not float_on:
        proxy = os.path.join(src, APP_PROXY_SMALI)
        with open(proxy, "r", encoding="utf-8") as f:
            lines = f.readlines()
        with open(proxy, "w", encoding="utf-8") as f:
            f.writelines(ln for ln in lines if FLOAT_LOAD_MARK not in ln)
    overlay = smali_assemble(src, os.path.join(workdir, "overlay.dex"))  # noqa: F841
    base = os.path.join(workdir, "base.dex")
    with open(base, "wb") as f:
        f.write(base_dex_bytes)
    merged = os.path.join(workdir, "merged.dex")
    dex_merge(base, os.path.join(workdir, "overlay.dex"), merged)
    with open(merged, "rb") as f:
        return f.read()


# ===========================================================================
# 五、签名
# ===========================================================================
def ensure_key():
    if os.path.exists(KEYSTORE):
        return
    os.makedirs(os.path.dirname(KEYSTORE), exist_ok=True)
    keytool = find_tool("keytool") or "keytool"
    _run([keytool, "-genkeypair", "-keystore", KEYSTORE, "-storepass", KS_PASS,
          "-keypass", KS_PASS, "-alias", KS_ALIAS, "-keyalg", "RSA", "-keysize", "2048",
          "-validity", "10000", "-dname", "CN=amap-toolbox, OU=amap, O=amap, C=CN"])
    print(f"[sign] 已生成自签密钥库: {KEYSTORE}")


def _apksig_jar():
    """确保 apksig jar 就位（首次自动下载到缓存），返回路径。"""
    os.makedirs(SMALI_CACHE, exist_ok=True)
    dst = os.path.join(SMALI_CACHE, APKSIG_JAR)
    if not os.path.exists(dst):
        print(f"[sign] 首次使用，下载 apksig 到 {dst} ...")
        urllib.request.urlretrieve(APKSIG_URL, dst)
    return dst


def _ensure_sign_class():
    """编译内置 SignApk.java（apksig 版签名器）到缓存，返回 (apksig_jar, classdir)。"""
    jar = _apksig_jar()
    outdir = os.path.join(SMALI_CACHE, "sign")
    os.makedirs(outdir, exist_ok=True)
    cls = os.path.join(outdir, SIGN_MAIN + ".class")
    if not os.path.exists(cls) or os.path.getmtime(cls) < os.path.getmtime(SIGN_SRC):
        javac = os.path.join(java_env().get("JAVA_HOME", ""), "bin", "javac")
        if not os.path.exists(javac):
            javac = shutil.which("javac") or "javac"
        _run([javac, "-cp", jar, "-d", outdir, SIGN_SRC])
    return jar, outdir


def sign_apk(apk_path):
    """优先 apksig 做 v1+v2 签名（不需要 Android SDK）；失败则回退 jarsigner v1。"""
    ensure_key()
    signed = apk_path + ".signed"
    try:
        jar, outdir = _ensure_sign_class()
        _run([_java_bin(), "-cp", jar + os.pathsep + outdir, SIGN_MAIN,
              KEYSTORE, KS_PASS, KS_ALIAS, KS_PASS, apk_path, signed])
        os.replace(signed, apk_path)
        return "apksig (v1+v2)"
    except Exception as e:
        if os.path.exists(signed):
            os.remove(signed)
        msg = getattr(e, "stderr", None) or str(e)
        print(f"[sign] apksig 签名不可用（{msg.splitlines()[0] if msg else e}），回退 jarsigner v1。")
    jarsigner = find_tool("jarsigner") or "jarsigner"
    _run([jarsigner, "-keystore", KEYSTORE, "-storepass", KS_PASS, "-keypass", KS_PASS,
          "-sigalg", "SHA256withRSA", "-digestalg", "SHA-256", apk_path, KS_ALIAS])
    print("[sign] ⚠️ 已用 jarsigner 做 v1(JAR) 签名。"
          "Android 11+ 且目标 SDK≥30 的车机可能拒装 v1-only。")
    return "jarsigner (v1 only)"


def zipalign(unsigned_path):
    za = find_tool("zipalign")
    if not za:
        print("[align] ⚠️ 未找到 zipalign，跳过对齐。多数高德包 extractNativeLibs=true 时无碍。")
        return
    aligned = unsigned_path + ".aligned"
    _run([za, "-p", "-f", "4", unsigned_path, aligned])
    os.replace(aligned, unsigned_path)


# ===========================================================================
# 六、子命令
# ===========================================================================
def _default_out(apk, tag):
    base, ext = os.path.splitext(apk)
    return f"{base}_{tag}{ext or '.apk'}"


def _finish(tmp, out_path):
    if tmp != out_path:
        shutil.move(tmp, out_path)
    zipalign(out_path)
    signer = sign_apk(out_path)
    print(f"[done] 输出: {out_path}\n[done] 签名: {signer}")


def _get_manifest(apk):
    m = extract_entry(apk, "AndroidManifest.xml")
    if m is None:
        sys.exit("APK 中未找到 AndroidManifest.xml")
    return m


def cmd_info(args):
    pkg, app, perms, auths = axml_manifest_facts(_get_manifest(args.apk))
    print(f"包名 package: {pkg}")
    print(f"Application: {app}")
    if perms:
        print("权限 permissions:")
        for p in sorted(set(perms)):
            print("  " + p)
    if auths:
        print("provider authorities:")
        for a in sorted(set(auths)):
            print("  " + a)


def _parse_replaces(apk, specs):
    """--replace 的 'apk内路径=本地文件' 列表 → {apk内路径: bytes}。校验本地文件存在、apk 内路径存在。"""
    out = {}
    if not specs:
        return out
    with zipfile.ZipFile(apk, "r") as z:
        names = set(z.namelist())
    for spec in specs:
        if "=" not in spec:
            sys.exit(f"--replace 格式应为 apk内路径=本地文件，收到: {spec}")
        entry, local = spec.split("=", 1)
        entry, local = entry.strip(), local.strip()
        if not os.path.exists(local):
            sys.exit(f"--replace 本地文件不存在: {local}")
        if entry not in names:
            print(f"[replace] ⚠️ APK 内不存在条目 {entry}（将作为新增文件写入）")
        with open(local, "rb") as f:
            out[entry] = f.read()
        print(f"[replace] {entry}  ←  {local} ({len(out[entry])} B)")
    return out


def _inject_and_pack(apk, out_path, float_on, manifest_mapping, tag, extra_files=None):
    """覆盖合并签名绕过(+可选悬浮)进 classes.dex，可选改 manifest(共存)、替换任意内部文件，重打包 + 签名。"""
    dex = extract_entry(apk, "classes.dex")
    if dex is None:
        sys.exit("APK 中未找到 classes.dex")
    new_manifest = None
    if manifest_mapping:
        new_manifest = axml_apply(_get_manifest(apk), manifest_mapping)
        if new_manifest is None:
            sys.exit("manifest 改写未产生变化")
    print(f"[{tag}] 覆盖合并注入到 classes.dex（{'含悬浮' if float_on else '仅签名绕过'}）...")
    work = tempfile.mkdtemp(prefix="amap_inject_")
    try:
        merged = build_merged_classes_dex(dex, float_on, work)
        print(f"[{tag}] 合并后 classes.dex: {len(merged)} B（原 {len(dex)} B）")
        repl = dict(extra_files or {})
        repl["classes.dex"] = merged
        if new_manifest is not None:
            repl["AndroidManifest.xml"] = new_manifest
        tmp = out_path + ".tmp"
        zip_repack(apk, repl, tmp, strip_sig=True)
        _finish(tmp, out_path)
    finally:
        shutil.rmtree(work, ignore_errors=True)


def cmd_qiansign(args):
    out = args.o or _default_out(args.apk, "qiansign")
    extra = _parse_replaces(args.apk, args.replace)
    _inject_and_pack(args.apk, out, False, None, "qiansign", extra)


def cmd_coexist(args):
    pkg, app, perms, auths = axml_manifest_facts(_get_manifest(args.apk))
    new = args.pkg.strip()
    if not pkg:
        sys.exit("无法解析原包名")
    if new == pkg:
        sys.exit("新包名与原包名相同")
    print(f"[coexist] 原包名: {pkg} → 新包名: {new}")
    mapping = coexist_mapping(pkg, new, perms, auths)
    for k, v in mapping.items():
        print(f"    {k}  ->  {v}")
    extra = _parse_replaces(args.apk, args.replace)
    _inject_and_pack(args.apk, args.o or _default_out(args.apk, "coexist"), False, mapping, "coexist", extra)


def cmd_float(args):
    out = args.o or _default_out(args.apk, "float")
    _, _, perms, _ = axml_manifest_facts(_get_manifest(args.apk))
    if "android.permission.SYSTEM_ALERT_WINDOW" not in perms:
        print("[float] ⚠️ manifest 未声明 SYSTEM_ALERT_WINDOW 权限，系统悬浮窗可能无法显示。"
              "本工具不改权限列表；如需悬浮请确保系统给了「显示在其他应用上层」权限。")
    extra = _parse_replaces(args.apk, args.replace)
    _inject_and_pack(args.apk, out, True, None, "float", extra)


def cmd_sign(args):
    out = args.o or _default_out(args.apk, "signed")
    tmp = out + ".tmp"
    zip_repack(args.apk, {}, tmp, strip_sig=True)
    _finish(tmp, out)
    print("[sign] 注意：高德有防篡改，仅重签名装上会闪退。要让高德能启动请用 qiansign。")


def main():
    ap = argparse.ArgumentParser(description="高德车机版 APK：去签/共存/悬浮")
    sub = ap.add_subparsers(dest="cmd", required=True)

    p = sub.add_parser("info", help="读 manifest 包名/application/权限/authorities")
    p.add_argument("apk")
    p.set_defaults(func=cmd_info)

    rep_help = ("替换 APK 内文件（可多次）：--replace 'apk内路径=本地文件'。"
                "例：--replace assets/res/EngineRes/bl_data/GblConfig.json=./GblConfig_new.json")

    p = sub.add_parser("qiansign", help="去签：签名绕过（可 --replace 塞入改好的内部文件）")
    p.add_argument("apk")
    p.add_argument("-o", help="输出路径")
    p.add_argument("--replace", action="append", metavar="APK路径=本地文件", help=rep_help)
    p.set_defaults(func=cmd_qiansign)

    p = sub.add_parser("coexist", help="共存：改包名 + 去签（可 --replace）")
    p.add_argument("apk")
    p.add_argument("--pkg", required=True, help="新包名，如 com.autonavi.amapauto.coexist")
    p.add_argument("-o", help="输出路径")
    p.add_argument("--replace", action="append", metavar="APK路径=本地文件", help=rep_help)
    p.set_defaults(func=cmd_coexist)

    p = sub.add_parser("float", help="悬浮：注入 floatapp + 去签（可 --replace，实验性）")
    p.add_argument("apk")
    p.add_argument("-o", help="输出路径")
    p.add_argument("--replace", action="append", metavar="APK路径=本地文件", help=rep_help)
    p.set_defaults(func=cmd_float)

    p = sub.add_parser("sign", help="仅剥旧签名 + 重签名（通用；高德单用会闪退）")
    p.add_argument("apk")
    p.add_argument("-o", help="输出路径")
    p.set_defaults(func=cmd_sign)

    args = ap.parse_args()
    try:
        args.func(args)
    except subprocess.CalledProcessError as e:
        msg = (e.stderr or e.stdout or str(e))
        cmd = ' '.join(e.cmd) if isinstance(e.cmd, list) else e.cmd
        sys.exit(f"外部命令失败：{cmd}\n{msg}")
    except (RuntimeError, FileNotFoundError, ValueError) as e:
        sys.exit(str(e))


if __name__ == "__main__":
    main()
