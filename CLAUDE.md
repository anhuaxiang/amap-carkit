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

## ELF so 二进制补丁（9.5 / AArch64）：也用 skill

`libautonavi.so` / `libGbl.so` 是**真正的 ELF 动态库**（和上面的资源容器不是一回事），用同一 skill 的 `sopatch.py`：

```bash
# 巡航触发参数（几秒几码）
python3 .claude/skills/amap-config-crypto/sopatch.py cruise95 info libautonavi.so
python3 .claude/skills/amap-config-crypto/sopatch.py cruise95 set  libautonavi.so --time 3 --speed 3

# 不丢灯修复
python3 .claude/skills/amap-config-crypto/sopatch.py gbl info  libGbl.so
python3 .claude/skills/amap-config-crypto/sopatch.py gbl patch libGbl.so
```

- **巡航参数**：三指令窗口 `[before][目标][after]` 定位（不用固定偏移），改写
  `fmov s0/d0,#imm8`（时速）和 `movz w8,#imm16`（时长，单位毫秒）。
  时速受 fmov 立即数限制：只能是 `±(1+m/16)×2^e`，整数 **1~31** 可用，32+ 直接报错。
- **不丢灯**：见下节。双向扫描，已修复自动跳过（幂等）。
- 都做**写后回读验证**，不过不导出；特征码是 9.5 专用，换版本报"未识别"时**别 `--force` 硬写**。

### 丢灯的根因与两处补丁（反汇编 501.apk 的 libGbl.so 确认）

引擎周期性推送红绿灯倒计时数据，**推来空 vector 时**（数据没算出来 / 定位漂 / 服务端这拍
没返回 / 两次更新的空窗），代码把"我这次没数据"当成"确实没红绿灯"，**直接清空图层** →
屏幕上的灯闪断，就是"丢灯"。补丁让空推送被忽略，保留上一次的灯直到真实数据覆盖。

**巡航和导航是两份独立实现，各有一处，要分别打**（两边共用同一条日志串
`"[engineid=%d][%p][vecTrafficLightInfo = 0]"` @`0x5A5876`，同一个模板复制出来的）：

| id | 函数 | 空数据时原本 | 补丁 |
|----|------|--------|------|
| `no_lose_light_cruise_95` | `CruiseTrafficSignalLightLayer::UpdateCruiseTrafficLightCountdown` | `b ClearAllItems` 尾调用 | → `ret` |
| `no_lose_light_guide_95` | `GuideTrafficSignalLightManager::UpdateTrafficLightCountdown` | `bl ResetData` | → `nop` |

- 巡航那处能直接 `ret`：前一条 `ldp x29,x30,[sp],#0x60` 已恢复完栈帧，`b` 只是尾调用形式；
  导航那处是普通 `bl` + 继续往下走，只能 `nop`。
- `ClearAllItems` / `ResetData` 本身没废，其它调用点（退出巡航/导航、销毁）保留，该清还会清。
- ⚠️ 网页版工具的"不丢灯"**只有巡航那一条**，导航没修——名字名不副实。
- **实测状态**：巡航 ✅ 已上车验证正常；导航 ⚠️ 未实测。
  导航侧潜在副作用：`ResetData` 顺手把 alpha 复位成 `1.0f`，而导航有 `CalculateLightAlpha()`
  做淡入淡出，跳过后残留的灯可能卡在上一次的 alpha。出问题就回退到只打巡航那条。

## APK 去签 / 共存 / 悬浮：也用 skill

给**高德车机版 APK**做一键改造，用同一 skill 的 `apkmod.py`（逆向自 `toolbox.apk` / 小德工具箱）：

```bash
S=.claude/skills/amap-config-crypto/apkmod.py
python3 $S info     amap.apk                                       # 读包名/application/权限/authorities
python3 $S qiansign amap.apk                                       # 去签（注入 HookApplication）
python3 $S coexist  amap.apk --pkg com.autonavi.amapauto.coexist  # 共存（改包名 + 去签）
python3 $S float    amap.apk                                       # 悬浮（floatapp + 去签，实验性）
```

- ⚠️ **根因（实测）**：高德有**防篡改**，只要用非原厂密钥重签名，启动即闪退（连只 `sign` 不改代码也崩）。
  **所以任何改动都必须配合能生效的"签名绕过"**。⚠️ 只加一个 classes2.dex 当新 Application **不够**——
  这个版本还在 native/阿里 SecurityGuard 里查，会弹「应用异常」。
- **绕过做法（覆盖 classes.dex 里的已有类，实测能过）**：用 `smali` 把整套 `assets/smali_inject/` 汇编成
  overlay.dex，再用 **dexlib2（`MergeDex.java`）合并进 classes.dex，同名类以 overlay 为准（覆盖）**：
  `MapApplicationProxy` 父类改成 `bin/mt/signature/KillerApplication`（反射换 `PackageInfo.CREATOR`、
  清 `sPackageInfoCache`，把签名伪造回原厂证书）+ **覆盖 `com/alibaba/wireless/security/framework/e` 等
  削弱阿里 SecurityGuard** + 补进 `bin/mt/signature/**`、`floatapp/**`。manifest 不动。**只用 smali 汇编 + dexlib2 合并，不需要 baksmali。**
- **qiansign**：合并签名绕过（删掉悬浮激活行）；**coexist**：再改 `package`/权限名/`authorities`（不动 activity 类名）；**float**：保留悬浮激活。
- **coexist 还必须改两处包名**（toolbox 原版漏了，tool.apk 只做了 arsc）：
  ① 签名绕过 smali 里写死的 `"com.autonavi.amapauto"`（`KillerApplication`×3、`HookApplication`×1、`q3`×1）换成新包名；
  且 `KillerApplication.getCurrentPackageName()` 原实现取的是 `bin.mt.signature`（类所在 Java 包），`static{}` 里那次签名伪造等于没生效，改成直接返回新包名；
  ② `resources.arsc` 的 package chunk 包名改成新包名，否则 `getIdentifier(..., getPackageName())` 查不到资源。
- 三者都会：剥 META-INF 旧签名 → 重签名。**签名用 apksig 做 v1+v2**（与 toolbox 一致，v3 关闭；
  首次自动下载 apksig，不需要 Android SDK；失败才回退 jarsigner v1）。
  smali/dexlib2/apksig 工具链首次自动下载到 `~/.config/amap-toolbox/smali/`；密钥固定在 `~/.config/amap-toolbox/amap.keystore`。
- ⚠️ **限制**：① **版本敏感**：覆盖的是特定高德版本的已有类，换版本可能不匹配/崩（同 toolbox）。
  ② 共存改了包名，地图 SDK apiKey 绑「包名+签名」→ 地图可能加载不出（但不闪退）；想地图正常优先 `qiansign`。
  ③ `qiansign` ✅ **已真机验证能正常打开**；`coexist`/`float` 同套注入，本机验证到合法 dex + 签名通过，真机未逐一实测。
- **一体化出包**：可改文件都在 apk 内（`GblConfig.json`、`libMapAsset/libLayerAsset.so`、`libGbl/libautonavi.so` 等）。
  用 `--replace 'apk内路径=本地文件'`（可多次）一条命令「塞入改好的文件 + 去签 + 签名」出整包：
  `python3 apkmod.py qiansign aaa.apk --replace lib/arm64-v8a/libGbl.so=libGbl_new.so -o out.apk`。
  因为整包已去签重签，内部文件随便改都不触发高德 APK 防篡改。
- 详见 skill 的「四、APK 去签/共存/悬浮」章节。

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

### 全屏 vs 透明 DOCK（一组 4 个字段配合）

切换"全屏 / 透明 dock"两种形态的**主开关是 `ImmersiveMode`**，另 3 项是配套的边距 / 栏色。两份样本逐字节 diff 只差这 4 处：

| 字段 | 全屏 | 透明 DOCK | 作用 |
|------|------|-----------|------|
| `ImmersiveMode` | `1006` | `700` | **主开关**：沉浸模式类型 |
| `DysmorphismInfo` | `0,0,0,0` | `0,0,0,80` | 异形屏 / 安全区内边距，第 4 位=**底部预留 px**（给 dock 腾高度）|
| `navigationBarColor` | `""`（空）| `"0"` | 系统导航栏颜色（`0`=透明 / 黑）|
| `statusBarColor` | `""`（空）| `"0"` | 系统状态栏颜色（`0`=透明 / 黑）|

- **全屏** = `ImmersiveMode 1006` + 底部预留 0 + 栏色留空（走默认）：完全沉浸，不给 dock 留位。
- **透明 DOCK** = `ImmersiveMode 700` + 底部预留 `80` + 栏色 `"0"`：底部腾出 80px 并把栏色置透明，让 dock 叠在地图上。
- 四项要**成组改**，只改 `ImmersiveMode` 未必得到预期形态。

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
- 把巡航常用缩放级（约 `L10–20`）的 `MaxPitchAngle` 从 40 抬高。改动**只升不降**（`if 新值>原值 才写`），避免把原本已高的档拉低。
- **只调 `MaxPitchAngle` 而没开①的开关 = 完全无效**（踩过的坑）；`MaxPitchAngle` 只是上限，得先开天。

#### ⚠️ 露天阈值：封顶别低于 70（血泪坑）

- 天空有**显示阈值**：巡航横屏那个缩放级，俯仰得抬到**约 70° 以上才会露天**，低于就直接不显示。
- 所以"嫌天大就把封顶往下压"要有底线：**封顶 80→露太多，封顶 60→横屏直接没天**（阈值以下）。可用区间很窄。
- 调参历史（都作用于 fa1/fa2/fa3 的 LANDSCAPE+VERTICAL，L10→L20）：
  | 封顶 | 曲线 (L10..L20) | 实测 |
  |------|------|------|
  | 80 | 55/58/61/64/67/70/74/78/80/80/80 | 偏大 |
  | 60 | 45/47/49/51/53/55/57/58/60/60/60 | **横屏没天**（低于阈值）|
  | 70 | 52/55/58/61/64/67/69/71/72/72/72 | 全段渐变，露天且比 80 少 |
- 想更小 → 封顶降到 68/66 试；**别再往 60 以下走**。想更大 → 往 74–78 抬。

#### ✅ 推荐做法：巡航直接抄导航 NAVI 曲线（实测最好看）

- **导航态 `*_NAVI` 表原厂就开天**（L14 起爬升、L16→70、封顶 76，`fa3` 更克制封顶 70），过渡平滑、出现时机早。巡航要好看，**直接把巡航地图态的 `MaxPitchAngle` 整条复制成对应 NAVI 表即可**：
  - `CONFIG_TYPE_STATE_LANDSCAPE.MaxPitchAngle` ← 逐 `SenceLevel` 抄 `CONFIG_TYPE_STATE_LANDSCAPE_NAVI`
  - `CONFIG_TYPE_STATE_VERTICAL.MaxPitchAngle` ← 逐 `SenceLevel` 抄 `CONFIG_TYPE_STATE_VERTICAL_NAVI`
  - 只搬 `MaxPitchAngle`（别动 FovAngle/HorizonFar）；`key30` 置 1；**NAVI 表本身不要改**；三档 fa 都做。
- 对比：别人的"克制版"是 L1–16 全 40、L17 才跳 70（只有拉最近才露天）；抄 NAVI 版从 L14 就渐进露天，和导航一致——**这个更好看，已采用**。

### 操作

`soasset.py unpack` → 对 `mapprofile_fa*` 的 `.data` 做 `gzip 解压→改 JSON→gzip 重压` → `soasset.py pack`。
（`.data` 是 gzip，非明文；改完 `pack --orig` 回写，回验只应差这几个 profile。）

## 红绿灯"次灯/辅灯"样式（libLayerAsset）

红绿灯图层在 `libLayerAsset.so`，解包后布局只在 **`Device_1/`** 下（其它 Device 目录没有这些文件）。
- 导航：`Device_1/guide_traffic_signal_light_layer/` —— 主灯 `guide_traffic_signal_light_left/right.xml`（完整气泡：灯体圆+箭头+倒计时+通行+第N轮）；次灯 `guide_traffic_signal_light_secondary_right.xml`（简版药丸）。
- 巡航：`Device_1/cruise_traffic_signal_light_layer/` —— 主灯 `cruise_traffic_signal_light_main_simple/team_*.xml`；次灯 `lane_cruise_traffic_signal_light_secondary_left/right.xml`（药丸）。

### ⚠️ 改样式**不改 XML**（关键，别再走弯路）

两处改法都**不动任何 `.xml`**，分别落在 `Style.json` 和图片上：

1) **导航次灯 → 和主灯一致**：改 `guide_traffic_signal_light_layer/Style.json`。
   把 `layer_item_info.point_guide_traffic_signal_light_secondary.point_layer_item_style.{left,right,top}.normal_style` 里：
   - `poi_marker_id`：`guide_traffic_signal_light_secondary_left/right.xml` → 去掉 `_secondary`（指向主灯 XML）
   - `poi_marker_info`：`marker_info_guide_traffic_signal_light_secondary` → `marker_info_guide_traffic_signal_light`
   即让次灯图层**复用主灯 XML**；药丸 XML 保留但不再被引用。写回用 `json.dump(...,ensure_ascii=False,indent=1)`。

2) **巡航次灯 → 换格式（深玻璃底+亮彩环、去白边）**：重画 `LayerImages/` 里的图片，不动 XML。
   - 6 张底图 `cruise_traffic_signal_light_bg_{circle,ellipse}_{green,red,yellow}.png`：
     深底 `#1A1E24` + 亮彩环（环宽 4px，4× 超采样，中心不透明 92%）；
     环色/中心掺色比例：绿 `#22C36B`(30%) / 红 `#FF4D4F`(45%) / 黄 `#FFC02E`(50%)；
     `circle` 64×64（1 位数），`ellipse` 84×64 圆角矩形 **r=28**（2–3 位数）。
   - 去外层白底：`global_image_cruise_traffic_signal_light_bg_day_night.9.asvg` —— 扫 `03 05 00` 填充 token（命中 `#ffffff`、`#e0e5ea` 两处），把其后 alpha 字节置 `0x00`，文件长度仍 653。
   - PNG 生成脚本（`gen` 椭圆器 / `gen_rr` 圆角矩形器）见提交历史；回验重打包只应差这 8 个文件。

## 约束

- 仅用于用户自己设备上的合法配置查看与修改。
