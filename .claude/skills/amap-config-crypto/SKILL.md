---
name: amap-config-crypto
description: 高德地图车机版文件工具箱。(1) 加密/解密配置文件 FuncConfig.dat、GblConfig.json（AES-128-CBC + 定长外壳），支持 .dat/.json/.txt；(2) 解包/打包资源包 libMapAsset.so、libLayerAsset.so（高德自研容器，非 ELF）；(3) 9.5 ELF so 二进制补丁：libautonavi.so 巡航触发时速/时长参数、libGbl.so 不丢灯修复。当用户需要查看、编辑或回写高德车机配置/资源，或提到 gblconfig/funcconfig 乱码、解密加密、libMapAsset/libLayerAsset 解包打包、换图标车标、刷机配置、巡航几秒几码、改巡航参数、丢灯/不丢灯时使用。
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
python3 .claude/skills/amap-config-crypto/sopatch.py gbl patch libGbl.so   # 打补丁并导出 _patched.so
```

12 字节特征码整块替换，把中间那条跳转改成 `ret`，跳过丢灯判断：

```
原始: fd 7b c6 a8 | 54 00 00 14 | e5 70 ff d0
目标: fd 7b c6 a8 | c0 03 5f d6 | e5 70 ff d0      # 中间 4B: b -> ret
```

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
