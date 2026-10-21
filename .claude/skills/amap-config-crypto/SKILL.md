---
name: amap-config-crypto
description: 高德地图车机版文件工具箱。(1) 加密/解密配置文件 FuncConfig.dat、GblConfig.json（AES-128-CBC + 定长外壳），支持 .dat/.json/.txt；(2) 解包/打包资源包 libMapAsset.so、libLayerAsset.so（高德自研容器，非 ELF）；(3) 9.5 ELF so 二进制补丁：libautonavi.so 巡航触发时速/时长参数、libGbl.so 不丢灯修复；(4) APK 三合一 apkmod.py：一键共存(改包名)/去签(注入签名校验绕过)/悬浮(系统悬浮窗)，含剥旧签名+重签名。当用户需要查看、编辑或回写高德车机配置/资源，或提到 gblconfig/funcconfig 乱码、解密加密、libMapAsset/libLayerAsset 解包打包、换图标车标、刷机配置、巡航几秒几码、改巡航参数、丢灯/不丢灯，或 APK 共存/去签/悬浮/改包名/重签名时使用。
---

# 高德车机配置 加密/解密（AES）与资源包 解包/打包（.so）

本 skill 含三个工具：
- `crypto.py` —— 配置文件 AES 加解密（FuncConfig.dat / GblConfig.json）
- `soasset.py` —— 资源包 .so 解包/打包（libMapAsset.so / libLayerAsset.so），见「二」
- `sopatch.py` —— **真 ELF 动态库**二进制补丁（libautonavi.so / libGbl.so），见「三」

> ⚠️ `soasset.py` 和 `sopatch.py` 都叫 "so" 但完全不同：
> 前者处理高德**自研资源容器**（非 ELF，装图片/样式），后者处理**真正的 ELF 动态库**（装机器码）。

# 一、配置加密/解密 crypto.py

高德地图车机版的 `FuncConfig.dat`、`GblConfig.json` 等配置文件是**加密**存储的，直接打开是乱码。本 skill 用于在明文与密文之间转换，方便查看和修改后回写。

## 算法原理

- **AES-128-CBC / NoPadding（零填充）**，KEY 与 IV 均为 16 字节 ASCII 字符串。
- 明文在加密前被包成固定外壳：

  ```
  [ 16B 前缀prefix ][ 4B 明文长度(小端 uint32) ][ 真正明文 ][ 补0 至16字节对齐 ]
  ```

- 因为前缀、KEY、IV 都固定，所以所有密文文件开头 16 字节（CBC 第一个块）完全相同——这不是"魔数"，而是固定前缀加密后的确定结果。

## 预设密钥（按车机/地图版本选择）

| 档位 mode | KEY | IV | prefix |
|------|------|------|------|
| `7.5` | `Jbga21autoj7ZAsF` | `Jbga21autoj7ZAsF` | `1234567812345678` |
| `8.5`（默认）| `Yqwr31autou4PbNM` | `1234567812345678` | `9zxc46abc7o28l4t` |

> 若解密报"长度字段异常"，多半是版本对不上，换另一个档位重试。

## 用法

脚本：`crypto.py`（纯 Python，无第三方依赖；有 openssl 时自动走 openssl 加速，否则用内置 AES）。

```bash
python3 .claude/skills/amap-config-crypto/crypto.py <文件> [选项]
```

**按扩展名自动判断操作**（也可 `--op encrypt|decrypt` 强制）：

| 输入 | 默认动作 | 输出 |
|------|------|------|
| `.dat` | 解密 | `同名.txt` |
| `.txt` | 加密 | `同名.dat` |
| `.json`（内容是合法JSON）| 加密 | `去掉_decrypt + _encrypted.json` |
| `.json`（内容是密文）| 解密 | `同名_decrypt.json` |

常用选项：
- `--mode 7.5|8.5|custom`（默认 `8.5`）
- `--key K --iv IV --prefix P`（`custom` 模式；也可覆盖预设的单项，均需 16 字节）
- `-o 输出路径`
- `--stdout`（结果打印到标准输出，便于管道/对比）

## 示例

```bash
# 解密：GblConfig.json(密文) -> GblConfig_decrypt.json(明文)
python3 crypto.py GblConfig.json

# 编辑明文后回写加密（明文JSON -> 加密json）
python3 crypto.py GblConfig_decrypt.json          # 自动识别为明文并加密

# 解密 FuncConfig.dat -> FuncConfig.txt
python3 crypto.py FuncConfig.dat

# 用 7.5 档位、指定输出
python3 crypto.py GblConfig.json --mode 7.5 -o out.json

# 直接查看解密内容而不落盘
python3 crypto.py GblConfig.json --stdout | head
```

## 典型工作流（改配置并回刷）

1. 解密：`python3 crypto.py GblConfig.json` → 得到 `GblConfig_decrypt.json`
2. 编辑 `GblConfig_decrypt.json` 里的字段（如把开关从 `"0"` 改成 `"1"`）
3. 加密：`python3 crypto.py GblConfig_decrypt.json` → 得到 `GblConfig_encrypted.json`
4. 把 `GblConfig_encrypted.json` 改名为设备需要的文件名，回刷进车机

## 注意

- 加密算法与原文件完全一致：对**未改动**的明文重新加密可得到与原密文**逐字节相同**的结果（已验证）。
- 仅用于用户自己设备上的合法配置查看与修改。

---

# 二、资源包解包/打包 soasset.py

`libMapAsset.so` / `libLayerAsset.so` **不是 ELF 库**，而是高德自研资源容器。用 `soasset.py`
把它解成一个目录，替换里面的图标/样式等资源后再打包回 `.so`。

## 格式（逆向自“装饰助手”App 的 SoParser，并用真实文件逐字节校验）

```
[文件头][16字节×N 索引表][数据区][尾部 zlib 文件名索引]
```

- 开头为 `7F 45 4C 46` 且 ≥4100 字节 → 有 ELF 壳，所有数据偏移 **+4096**；否则不偏移。
- 头 `@4`(相对) = 数据区起始；索引表起点：**MapAsset=57、LayerAsset=61**（再 +elf_base）。
- 每条记录 16 字节，小端 uint32：`{ id, offset, len, type }`（offset/len 为相对偏移）。
- **索引表里不存文件名**，只存 id。文件名靠“数据区末尾的 zlib 文本索引”(每行 `md5 / size / filename`)
  按【资源字节的 MD5】反查；内容相同的重名文件再用 `merged_resource_table.json`（本目录内，从 App 提取）按 id 兜底。
- `type` 按魔数判定：PNG=2(.9.png=4)、JPEG/GIF=2、ZIP=12、JSON=13、gzip/zlib/.data=14、.dat=3 …

## 用法

```bash
# 查看信息
python3 soasset.py list  libMapAsset.so

# 解包 → 目录（默认与 .so 同名目录），生成 resource_table.json + zlib.txt
python3 soasset.py unpack libMapAsset.so [-o 输出目录]

# 编辑目录里的文件后，以【原始 .so】为模板打包
python3 soasset.py pack  <目录> --orig libMapAsset.so [-o 新.so] [--redetect-type]
```

- 打包用 `--orig` 原始文件作模板：**未改动时数据区与索引表与原文件逐字节一致**（已验证）。
- 改了文件大小也没问题：会重排数据区、原地改写 16 字节记录、重建尾部 zlib 索引。
- `--redetect-type`：按新文件魔数重新判定 type（换了文件格式时用）。

## 工作流（换图标/车标/样式）

1. `unpack libMapAsset.so` → 得到目录 + `resource_table.json`；
2. 在目录里**按原文件名/格式**替换资源（如 `MapAsset/carLogo.png`）；
3. `pack 目录 --orig libMapAsset.so -o libMapAsset_new.so`；
4. 改名回刷进车机。

## 注意

- 新增文件时 id = `CRC32(相对路径)`（图片用不带后缀的文件名）；删除/替换会自动调整偏移。
- 尾部 zlib 索引每次重建，字节可能与高德原始不同，但内容完整、车机按 `78 9C` signature 扫描读取，不影响使用。
- 仅用于用户自己设备上的合法资源查看与修改。

---

# 三、ELF so 二进制补丁 sopatch.py（9.5 / AArch64）

处理**真正的 ELF 动态库**：`libautonavi.so`（巡航参数）、`libGbl.so`（不丢灯）。
架构靠 ELF 头 `e_machine`（偏移 18，小端 uint16）识别：`0x28`=ARM32、`0xB7`=AArch64。
所有写入都做**写后回读验证**，验证不过不导出。

## 1) 巡航参数 cruise95（libautonavi.so，AArch64）

改的是**进入巡航态的触发条件**：时速阈值 + 持续时长阈值（即常说的「几秒几码」）。

```bash
# 读当前值
python3 .claude/skills/amap-config-crypto/sopatch.py cruise95 info libautonavi.so

# 改成 3 秒 3 码并导出（默认输出 libautonavi_3秒3码.so）
python3 .claude/skills/amap-config-crypto/sopatch.py cruise95 set libautonavi.so --time 3 --speed 3 [-o 输出.so]
```

**定位方式**：不用固定偏移，而是用「前一条指令 + 后一条指令」组成 12 字节窗口，
命中后改**中间那条**指令（`[before 4B][目标 4B][after 4B]`，要求全文件唯一命中）。

| 补丁点 | before | after | 目标指令 |
|--------|--------|-------|----------|
| 时速阈值1 | `00 01 3f d6` | `20 21 20 1e` | `fmov s0, #imm8` |
| 时间阈值 | `cc 08 ff 97` | `c9 45 e0 d2` | `movz w8, #imm16` |
| 时速阈值2 | `c0 03 5f d6` | `61 5a 4b fd` | `fmov d0, #imm8` |
| 时速阈值3 | `1c 57 12 14` | `61 5a 4b fd` | `fmov d0, #imm8` |

**指令编码**（脚本自动算，这里备查）：
- `fmov s0,#imm8` = `0x1E201000 | imm8<<13`；`fmov d0,#imm8` = `0x1E601000 | imm8<<13`
- `movz w8,#imm16` = `0x52800008 | imm16<<5`，**imm16 单位是毫秒** → 时长最大 65 秒
- fmov 的 8 位立即数是 `abcdefgh` 格式：值 = `±(1 + m/16) × 2^e`，`m=0..15`、`e=-3..4`
  → 可表示范围 0.125~31.0；**整数 1~31 都能表示，32 及以上不行**（脚本会直接报错拒绝）
- 编码校验：float32 尾数低 19 位必须为 0，否则不可表示

## 2) 不丢灯修复 gbl（libGbl.so，AArch64）

```bash
python3 .claude/skills/amap-config-crypto/sopatch.py gbl info  libGbl.so   # 扫描状态
python3 .claude/skills/amap-config-crypto/sopatch.py gbl patch libGbl.so   # 全部补丁，导出 _patched.so
python3 .claude/skills/amap-config-crypto/sopatch.py gbl patch libGbl.so --only no_lose_light_cruise_95
```

**丢灯的根因**（反汇编确认）：引擎周期性推送红绿灯倒计时，推来空 vector 时
（数据没算出来 / 定位漂 / 服务端这拍没返回 / 更新空窗），代码把"我这次没数据"
当成"确实没红绿灯"，直接清空图层 → 屏幕上的灯闪断。补丁让空推送被忽略，
保留上一次的灯，直到真实数据把它覆盖。

**巡航和导航是两份独立实现，各有一处，都要打**（两边共用同一条日志串
`"[engineid=%d][%p][vecTrafficLightInfo = 0]"` @0x5A5876，是同一个模板复制出来的）：

| id | 函数 | 空数据时原本做什么 | 补丁 |
|----|------|----------|------|
| `no_lose_light_cruise_95` | `bl::CruiseTrafficSignalLightLayer::UpdateCruiseTrafficLightCountdown` | `b ClearAllItems`（尾调用） | → `ret` |
| `no_lose_light_guide_95` | `bl::GuideTrafficSignalLightManager::UpdateTrafficLightCountdown` | `bl ResetData` | → `nop` |

```
巡航  原始: fd 7b c6 a8 | 54 00 00 14 | e5 70 ff d0
      目标: fd 7b c6 a8 | c0 03 5f d6 | e5 70 ff d0    # b -> ret

导航  原始: e0 03 13 aa | 36 08 00 94 | f4 03 13 aa
      目标: e0 03 13 aa | 1f 20 03 d5 | f4 03 13 aa    # bl -> nop
```

巡航那处能直接 `ret`，是因为前一条 `ldp x29,x30,[sp],#0x60` 已经恢复完栈帧，
`b` 只是"栈收干净后再跳过去"的尾调用形式；导航那处是普通 `bl` + 继续往下走，
所以只能 `nop` 掉。两处的 `ClearAllItems` / `ResetData` 本身都没废，
其它调用点（退出巡航/导航、销毁等）原样保留，该清的时候还会清。

**双向扫描**：原始码唯一命中 → `⚪ 未修复`；目标码唯一命中 → `✅ 已修复`（跳过，幂等）；
都不唯一 → `❌ 未识别`（版本不同）。没有可写补丁时退出码为 1，不产出文件。

## 工作流

1. 从车机 `/system/...` 或安装包里取出对应 `.so`（先备份原件）；
2. `info` 看清当前值 / 补丁状态；
3. `set` / `patch` 生成新 `.so`；
4. 改回原文件名，回刷进车机。

## 注意

- **版本敏感**：特征码来自 9.5(AArch64)。换版本很可能 `❌ 未识别`，此时**不要用 `--force` 硬写**，
  应重新在新版本里定位特征码。9.1(ARM32) 走的是另一套固定偏移方案，本脚本未实现。
- 算法逆向自「自闭 高德工具整合」网页版 So 工具，本脚本为等价 Python 实现（已用构造样本验证读/写/回读/幂等）。
- 仅用于用户自己设备上的合法修改。


# 四、APK 去签 / 共存 / 悬浮 apkmod.py

给**高德车机版 APK** 一键去签/共存/悬浮。等价复刻「小德工具箱」toolbox.apk 的 `doInjectFloat`/`doCoexist`。

## ⚠️ 根因（实测确认）

高德有**防篡改**：用非原厂密钥重签名，启动即闪退（连只 `sign` 不改代码也崩）。原签名 ID 是 `MINIMAP_`。
**所以任何改动都必须配合能生效的"签名绕过"。** 光注入一个新类当 Application（classes2.dex）**不够**——
这个版本还在 native/阿里 SecurityGuard 里查，会弹「应用异常」。

## 做法（覆盖 classes.dex 里的已有类，实测这个版本能过）

用 `smali` 把整套 `assets/smali_inject/` 汇编成 overlay.dex，再用 **dexlib2（`MergeDex.java`）合并进
`classes.dex`，同名类以 overlay 为准（= 覆盖）**。覆盖的关键类：

- `com/autonavi/amapauto/app/MapApplicationProxy` → 父类改成 `bin/mt/signature/KillerApplication`
  （KillerApplication 在 `<clinit>`/`onCreate` 里反射替换 `PackageInfo.CREATOR`、清 `sPackageInfoCache`，
  把签名伪造回**高德原厂证书**）。
- `com/alibaba/wireless/security/framework/e` 等 5 个已有类 → 覆盖以**削弱阿里 SecurityGuard native 校验**。
- 新增 `bin/mt/signature/**`（ApkSignatureKillerEx）与 `floatapp/**`（悬浮窗）。

manifest **不动**（application 仍是原版 `MapApplicationProxy`，只是它的父类被换了）。
**只用 smali 汇编 + dexlib2 合并，不需要 baksmali。**

## 用法

```bash
S=.claude/skills/amap-config-crypto/apkmod.py
python3 $S info     amap.apk                                       # 读包名/application/权限/authorities
python3 $S qiansign amap.apk                                       # 去签（不激活悬浮）
python3 $S coexist  amap.apk --pkg com.autonavi.amapauto.coexist  # 共存（改包名 + 去签）
python3 $S float    amap.apk                                       # 悬浮（去签 + 激活 floatapp）
python3 $S sign     amap.apk                                       # 仅重签名（通用；高德单用会闪退）
```

- **qiansign**：合并签名绕过；删掉 `MapApplicationProxy.onCreate` 里拉起悬浮那行（floatapp 类仍在但不激活）。
- **coexist**：去签 + 改 `package`/权限名/`provider authorities`（**不动 activity 等类名**），可与原版并存。
  另外：签名绕过 smali（`KillerApplication`/`HookApplication`/`q3`）里写死的原包名换成新包名，
  `getCurrentPackageName()` 直接返回新包名（让 `static{}` 的签名伪造生效）；`resources.arsc` 包名也改成新包名。
- **float**：去签 + 保留悬浮激活（`TYPE_APPLICATION_OVERLAY`）。
- 三者都会：剥 META-INF 旧签名 →（有 zipalign 就对齐）→ 重签名。

## 一体化工作流：改内部资源 + 去签 + 出一个安装包

高德的可改文件都在 APK 内（`assets/res/EngineRes/bl_data/GblConfig.json`、
`.../DefaultTheme/libMapAsset.so`、`.../libLayerAsset.so`、`lib/arm64-v8a/libGbl.so`、`libautonavi.so` …）。
配合 **`--replace 'apk内路径=本地文件'`**（可多次），一条命令就能「塞入改好的文件 + 去签 + 签名」出一个整包。

```bash
# 例：给红绿灯不丢灯(改 libGbl.so) + 巡航天空/图标(改 libMapAsset.so) + 去签，出一个安装包
# 1) 取出→改
unzip -o aaa.apk lib/arm64-v8a/libGbl.so 'assets/res/EngineRes/bl_data/DefaultTheme/libMapAsset.so'
python3 sopatch.py  gbl patch lib/arm64-v8a/libGbl.so -o libGbl_new.so
python3 soasset.py  unpack .../libMapAsset.so -o mapasset && (改 mapasset 里的资源) && \
python3 soasset.py  pack   mapasset --orig .../libMapAsset.so -o libMapAsset_new.so
# 改配置同理：crypto.py 解密 GblConfig.json → 改明文 → 加密回 GblConfig_new.json
# 2) 一发出包：去签 + 替换这些文件
python3 apkmod.py qiansign aaa.apk \
  --replace lib/arm64-v8a/libGbl.so=libGbl_new.so \
  --replace assets/res/EngineRes/bl_data/DefaultTheme/libMapAsset.so=libMapAsset_new.so \
  --replace assets/res/EngineRes/bl_data/GblConfig.json=GblConfig_new.json \
  -o aaa_modded.apk
```

- `--replace` 走 `zip_repack`，保留其它条目的原压缩方式；改好的文件直接进包，无需回刷设备。
- 因为整包已去签+重签，**内部文件随便改都不会触发高德的 APK 防篡改**（这正是去签的意义）。
- ⚠️ 注意：改**布局/资源**要按对应正确方式（如红绿灯样式改 `Style.json`/图片而非 XML，详见 CLAUDE.md 相关章节）。

## 依赖 & 首次运行

- **smali/dexlib2 工具链**：首次自动下载到 `~/.config/amap-toolbox/smali/`（8 个 jar，约 4.7MB，
  Google Maven + Maven Central）。`MergeDex.java` 首次会用这些 jar 作 classpath 由 `javac` 编译到缓存。
  可用 `SMALI_CMD` 覆盖 smali 汇编命令。**不需要 baksmali。**
- **签名**：用 **apksig 做 v1+v2**（与原 toolbox 一致，v3 关闭）。首次自动下载 `apksig-8.7.3.jar` 到缓存，
  用它编译内置 `SignApk.java` 来签，**不需要 Android SDK / apksigner**。若 apksig 不可用才回退 `jarsigner` v1。
  密钥 `keytool` 首次生成到 `~/.config/amap-toolbox/amap.keystore`（固定 → 共存版可原地升级）。
  （resources.arsc 未 zipalign 对齐；Android 11+ 极少数会挑，遇到再装 build-tools 的 zipalign 对齐。）
- **java**：脚本自动定位 JDK 并注入 `JAVA_HOME`。

## ⚠️ 版本敏感 & 验证状态

- 覆盖的是**特定高德版本的已有类**（`assets/smali_inject/` 抠自 toolbox 目标版本）。
  **换高德版本可能不匹配、启动崩**——和原 toolbox 一样吃版本。换版本需重新抠对应版本的 smali。
- **共存的 apiKey 限制**：高德地图 SDK 的 apiKey 绑「包名+签名」，共存改了包名 → 地图可能加载不出/降级
  （但通常不再闪退）。想地图完全正常优先 `qiansign`（不改包名）。
- **实测状态**：`qiansign` ✅ **已在真机验证能正常打开**（覆盖合并注入 + 签名后可启动；真机验证时用的是 v1 签名，
  现默认已升级为 apksig v1+v2）。
  `coexist`/`float` 走同一套注入，本机已验证能产出合法 dex + 通过 `jarsigner -verify`，真机未逐一实测。
- 仅用于用户自己设备上的合法修改。
