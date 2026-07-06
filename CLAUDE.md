# 高德车机配置 逆向 / 编辑

本仓库用于查看和修改**高德地图车机版**的加密配置文件。

## 文件

| 文件 | 说明 |
|------|------|
| `FuncConfig.dat` | 功能开关配置（加密）|
| `FuncConfig.txt` | 上面的明文（已手动编辑过若干项）|
| `GblConfig.json` | 全局配置（加密，尽管扩展名是 .json）|
| `GblConfig_decrypt.json` | 上面的明文（已手动开启红绿灯预测等）|
| `libMapAsset.so` | 高德资源包：底图/样式/图标/车标/`mapprofile`（自研容器，非 ELF）|
| `libLayerAsset.so` | 高德资源包：图层渲染（红绿灯/车标/路线等的 XML/asvg/png）|
| `data/libMapAsset/`、`data/libLayerAsset/` | 上面解包后的目录 |

## 加密方案

- **AES-128-CBC / NoPadding**，KEY、IV 为 16 字节 ASCII 字符串。
- 明文外壳：`[16B 前缀][4B 明文长度(小端)][明文][补0对齐]`，整体再 AES 加密。
- 因前缀/KEY/IV 固定，所有密文文件开头 16 字节相同（非魔数，是固定前缀的加密结果）。
- 预设：`8.5`（默认，本仓库文件所用）/ `7.5`。详见 skill。

## 加密/解密：用 skill

加解密统一走 skill **`amap-config-crypto`**（`.claude/skills/amap-config-crypto/`），不要手写临时脚本。

```bash
# 自动按扩展名/内容判断：.dat<->.txt，.json 明文<->密文
python3 .claude/skills/amap-config-crypto/crypto.py <文件> [--mode 8.5|7.5] [-o 输出]
```

- 该脚本纯 Python、无第三方依赖，有 openssl 时自动加速。
- 已验证：未改动明文重新加密与原密文**逐字节相同**。

## 资源包 .so 解包/打包：也用 skill

`libMapAsset.so` / `libLayerAsset.so` 是高德自研资源容器（**非 ELF**），用同一 skill 的 `soasset.py`：

```bash
python3 .claude/skills/amap-config-crypto/soasset.py unpack libMapAsset.so [-o 目录]
python3 .claude/skills/amap-config-crypto/soasset.py pack  <目录> --orig libMapAsset.so [-o 新.so]
```

格式：`[头][16字节×N 索引表(id/offset/len/type,小端)][数据区][尾部 zlib 文件名索引]`；
文件名靠资源 MD5 在尾部 zlib 索引里反查（+ 内置 `merged_resource_table.json` 兜底）。
已验证：未改动重打包，数据区与索引表**逐字节相同**。格式规则逆向自高德客户端的 `SoParser` 类。

## 改配置的流程

1. 解密 → 2. 编辑明文 JSON → 3. 重新加密 → 4. 改名回刷进车机。

## 已知的红绿灯相关字段（GblConfig）

- `BizLayer.ShowTrafficCountDownForecast` —— **预测下一轮红绿灯**（Forecast，1=开）
- `BizLayer.ShowSecTrafficCountDown` —— 红绿灯秒级倒计时
- `GblTbt.cruiseTrafficLightEnable` —— 巡航态红绿灯显示
- `GblTbt.AItrafficlight` —— AI（视觉）红绿灯识别
- `GblTbt.TrafficLightMerge` / `TrafficLightMergeDistance` —— 相邻红绿灯合并
- `GblLane.layer.lightCountdown` / `lightIcon` —— 车道级红绿灯倒计时/图标

## 已知的 FuncConfig 字段（FuncConfig.dat / .txt）

- `getMapExitPosition` = `1` —— 地图主页右上角显示**退出按钮**
- `ImmersiveMode` = `1006` —— **沉浸式 / 全屏模式**
- `isUserHighVersionAudioApi` = `1` —— 用高版本音频 API（导航播报时可**压低媒体音量**，而非打断）

## 巡航天空：开天 + 加大（libMapAsset / mapprofile）

天空由 **`libMapAsset.so` 里的 `mapprofile_*` 档案**控制（gzip 压缩的 JSON，扩展名 `.data`）。
档位：`mapprofile_1`/`_2` 为常规档，`mapprofile_fa1/fa2/fa3` = **低/中/高性能**（车机按性能加载其一，改就三档一起改最省心）。

profile 里的相机表：`CONFIG_TYPE_STATE_LANDSCAPE`(横屏地图态) / `_LANDSCAPE_NAVI`(横屏导航) / `_VERTICAL*`(竖屏)，每张 20 行对应缩放级 `SenceLevel 1–20`（数字大=拉近）。

### 1) 开天（总开关，必须先开）

- **`CONFIG_TYPE_CONTENT` 里 key=30 的 `value`：`0→1`** —— 这是天空盒开关。
- ⚠️ 该项 `name` 标的是 `subway`/`地铁`（元数据遗留名），**实际控制天空**，别被名字骗了。
- 对照两份样本(开天/没开天)验证：三档都要置 1；`fa3` 只改这一处即可开天。

### 2) 加大天空（开关已开的前提下）

- **天空多大 = 相机俯仰 `MaxPitchAngle`**（越大越抬头，露出的天空越多）。
- **巡航走「地图态」表，不是 NAVI 表**：横屏改 `CONFIG_TYPE_STATE_LANDSCAPE`（竖屏改 `_VERTICAL`），**改 `_LANDSCAPE_NAVI` 无效**。
- 把巡航常用缩放级（约 `L10–20`）的 `MaxPitchAngle` 从 40 抬高（实测好用曲线：L10→55 递增到 L18–20→80）。
- **只调 `MaxPitchAngle` 而没开①的开关 = 完全无效**（踩过的坑）；`MaxPitchAngle` 只是上限，得先开天。

### 操作

`soasset.py unpack` → 对 `mapprofile_fa*` 的 `.data` 做 `gzip 解压→改 JSON→gzip 重压` → `soasset.py pack`。
（`.data` 是 gzip，非明文；改完 `pack --orig` 回写，回验只应差这几个 profile。）

## 约束

- 仅用于用户自己设备上的合法配置查看与修改。
