# HarmonyOS 应用 Casks

本目录下的 cask 由 `scripts/haps_to_casks.py` 从上游仓库
[Zitann/HarmonyOS-Haps](https://github.com/Zitann/HarmonyOS-Haps) 的 `apps.yaml` 生成，
运行时整目录覆盖，手工改动会在下次生成时丢失。新增或修改条目请改上游的 `apps.yaml`。

每个 cask 都用 `ohos_app` 把 HarmonyOS 应用包复制到 `~/Download`，
配合 [HarmonyBrewCasks](https://gitcode.com/handwer/HarmonyBrewCasks) 里的 brew 适配补丁使用。

## 收录范围

只收录最新 Release 里带 `.hap` 或 `.app` 资产的条目。地址写成带 `#{version}` 的形式，
版本号优先从 tag 或资产名里取，取不到时用 tag 本身，这样地址始终指向实际选中的
Release，不会因为 `releases/latest` 跳过预发布而取错文件。tag 恰好是 `latest` 时
（brew 的保留字）写成 `version :latest` 加明确的 tag 路径。
Release 按创建时间从新到旧挑选，同一时刻才让稳定版压过预发布；
挑选时会对下载地址发一次请求，取不到就退到下一个 Release。
资产自带 sha256 时写进 `sha256 arm64_linux:`，取不到摘要的写成 `sha256 :no_check`。
cask token 取上游下载仓库名，重名时加上各自的 owner 前缀。

## 当前收录

### 一次开发，多端部署

| cask | 版本 | 软件 | 上游仓库 |
| --- | --- | --- | --- |
| `aira-browser` | 3.9.1 | Aira | `mason173/aira-browser` |
| `amcl` | 1.0.6 | AMCL | `LZZLHY/amcl` |
| `anich` | 1.5.27 | AniCh | `Sle2p/AniCh` |
| `audiobookshelf-harmonyos` | 2.3.0 | Harmshelf | `shanyan-wcx/Audiobookshelf-HarmonyOS` |
| `bettbox` | 1.19.7 | Bettbox | `htoay/Bettbox` |
| `bika-harmonyos` | 1.4.7 | 哔咔 | `LoMoCatAp/Bika-HarmonyOS` |
| `collection-ohos` | 1.29.0 | 收藏 | `muleos/collection_ohos` |
| `diplay-harmony` | 0.13.11 | DiPlay Harmony | `Tedfaraday/DiPlay-Harmony` |
| `etohos` | 1.0.9 | Etohos | `collaborative-creation/etohos` |
| `flclash-ohos` | 0.8.96 | FlClash | `tljk/FlClash-ohos` |
| `hap-installer` | 1.0.0 | HapInstaller | `LMV475/hap-installer` |
| `hapapp` | 1.7.4 | ClashBox | `xiaobaigroup/hapapp` |
| `hapstore` | 1.0.2 | HapStore | `zhailinlang/hapstore` |
| `harmonic` | 2.1.7 | Harmonic | `shanyan-wcx/Harmonic` |
| `harmonyx` | 3.7.0 | Harmony X | `haohaoai0/HarmonyX` |
| `hlib` | 1.0.1 | 海阅 | `LZZLHY/hlib` |
| `home-cloud-shield` | 0.1.0 | 栖云盾 | `Tlntin/home-cloud-shield` |
| `homl` | 1.1.0 | HOML启动器 | `xiaobaigroup/HOML` |
| `hx360e` | 1.0.2 | HX360E | `1440196924/HX360E` |
| `jellyfin-harmonyos` | 1.0.4 | JellyFin | `chashaochang/JellyFin_HarmonyOS` |
| `kazumi` | 2.4.1 | Kazumi | `ErBWs/Kazumi` |
| `libretv-for-harmonyos` | 2.3.6 | LibreTV | `panhaichen-creator/LibreTV-for-HarmonyOS` |
| `linysbrowser-next` | 2.1.1 | 冲浪喵 | `awaLiny2333/LinysBrowser_NEXT` |
| `lnga-harmony` | 1.2.6 | LNGA | `apap6628114/lnga_harmony` |
| `lovelyflash-jmcomic-harmonyos` | 1.1.2 | JMComic | `LovelyFlash/JMComic-HarmonyOS` |
| `lvlian-view-hm` | 1.0.14 | 联文件 | `fhf2022/lvlian-view-hm` |
| `lx-music-harmony` | 1.0.0 | 洛雪音乐 | `k-brother/lx-music-harmony` |
| `mcb-ohos` | 1.2.0 | Minecraft Box | `lxdklp/MCB_OHOS` |
| `melotopia-hmos` | 1.15.3 | Melotopia | `Chenlvin/Melotopia-HMOS` |
| `miha-hm` | 1.1.9 | 鸿米家 | `MrCashmere/miha_hm` |
| `mindustryark` | 1.3.3.2 | MindustryArk | `haohandc/MindustryArk` |
| `mr` | 2026-09-12 | MR | `DandanLLab/mr` |
| `neriplayer-harmonyos` | 1.4.0 | 音理音理! | `suyunxing/NeriPlayer-HarmonyOS` |
| `nexhub` | 3.3.0 | NexHub | `nexhub-app/NexHub` |
| `nextn` | 1.0.8 | NextN | `erosTeam/NextN` |
| `ohsidian` | latest | OHsidian | `HanversionOvO/OHSidian` |
| `pilinara` | 2.1.6.1 | PiliNara | `dev4harmony/PiliNara` |
| `piliplus` | 2.1.6.2 | PiliPlus | `dev4harmony/PiliPlus` |
| `piliplusx` | 1.1.6.4 | PiliPlusX | `cnctem/PiliPlusX` |
| `quietstart` | 1.2.9 | 轻启 | `thx853068675-dev/quietstart` |
| `s1-orange` | 1.5.2 | S1 Orange | `wly5556/S1-Orange` |
| `tailscale-ohos` | 0.3.19 | Tailscale | `flypigJ/Tailscale-OHOS` |
| `tunnelark` | 1.1.3 | 隧舟 TunnelArk | `RockyMtnWolf/TunnelArk` |
| `vhome-release` | 2.6.14 | VHome (vae＋) | `muleos/VHome-release` |
| `videojx` | HM | 影视链 | `xiaomoHM/videoJX` |
| `winehua` | 1.0.31 | 万花 | `winehua/WineHua` |
| `wpixelgram-for-harmonyos` | 0.1.0 | Wpixelgram | `1055235342/Wpixelgram-for-HarmonyOS` |
| `yourpipe` | 0.7.0-1000032 | YourPipe | `Ember5843/YourPipe` |
| `yuanchu-tec-jmcomic-harmonyos` | 1.0.10 | JMComic | `YuanChu-Tec/JMComic-HarmonyOS` |
| `zhihu-plus-plus-hmos` | 0.5.10 | 知乎++ | `zhuoyi233/zhihu-plus-plus-HMOS` |

### 鸿蒙手机/平板

| cask | 版本 | 软件 | 上游仓库 |
| --- | --- | --- | --- |
| `appbundlenameforshared` | 1.2 | 包名解析 | `SummerKaze/AppBundleNameForShared` |
| `awesomeresume` | 2025.8.3 | awesome_blbl | `Luo-A-Chen/AwesomeResume` |
| `c001apk-ohos-releases` | 1.3.6 | 酷安 | `muleos/c001apk-ohos-releases` |
| `calculatorx` | 1.6.5 | CalculatorX | `StartYR/CalculatorX` |
| `catpawopen` | 2.0.3 | 影视猫 | `CatPawApp/CatPawOpen` |
| `ecohub-for-ohos` | 1.4.1 | EcoHub | `fe-spark/EcoHub-for-OHOS` |
| `fmphoto` | 1.4.2.12 | 飞马相册 | `jonas-pi/FMphoto` |
| `freshrss-harmony` | 2.34 | FreshRSS | `wtronfi/FreshRSS-Harmony` |
| `harflix` | 1.0.6 | Harflix | `Actrlq/Harflix` |
| `harmony-kslmkf-karing-hap` | 1.11.0 | Karing | `ks-lm-kf/harmony-kslmkf-karing-hap` |
| `hey` | 1.3.4 | Hey | `xiaoli8571/Hey` |
| `homenapod` | 1.0.19 | HomenaPod | `TomoeMami/HomenaPod` |
| `homowarden` | 2.0.3 | Homowarden | `DreamistW/Homowarden` |
| `immich-ohos` | 3.3.5 | immich | `dgh1818/immich_ohos` |
| `legado-harmony` | 1.0.6.218 | 开源阅读 | `mgz0227/legado-Harmony` |
| `livify-ohos` | 1.1.0 | 聚映 | `yabi-zzh/livify-ohos` |
| `localsend-ohos` | 1.17.2 | LocalSend | `Aloereed/localsend-ohos` |
| `nekobox4harmony` | 2.6.0 | NekoBox | `xiaoli8571/NekoBox4Harmony` |
| `neon-ohos` | 1.0.0 | Neon | `shokakucarrier/neon-ohos` |
| `next2v` | 1.0.13 | Next2V | `honjow/Next2V` |
| `nexte` | 1.3.7 | NextE | `erosTeam/NextE` |
| `nexus-vpn-harmonyos` | 0.7.4 | Nexus | `xiaoli8571/Nexus-VPN-HarmonyOS` |
| `niceleep` | 1.1.0 | 响入睡 | `qinshah/niceleep` |
| `nipaplay-reload` | 1.11.10 | NipaPlay | `AimesSoft/NipaPlay-Reload` |
| `ohentai` | 0.5.4 | Ohentai | `Ibukitofu/Ohentai` |
| `petrelgram` | 1.5.6 | Petrelgram | `miramira8295/Petrelgram` |
| `picacomic-ohos` | 5.0.0 | Pica Comic | `nimmi114514/PicaComic_ohos` |
| `pixez-flutter-ohos` | 0.9.112 | PixEz | `bgli100/pixez-flutter-ohos` |
| `pokedex-next` | 1.0.0 | 宝可梦图鉴 | `Luxcis/Pokedex_Next` |
| `shuati` | ShuaTi | 刷题宝 | `xiaomoHM/ShuaTi` |
| `soc-search` | 1.0.25 | soc-search | `Amview/soc-search` |
| `tieba-lite-harmony` | 1.4.0 | 贴吧 Lite | `137458/tieba-lite-harmony` |
| `weibopura` | 1.0.0 | 微博Pura | `haohaoai0/WeiboPura` |

### 鸿蒙电脑

| cask | 版本 | 软件 | 上游仓库 |
| --- | --- | --- | --- |
| `aria2-ohos` | 1.0.1 | aria2 | `SwimmingTiger/aria2-ohos` |
| `harmonix` | 0.0.11 | Harmonix | `hackeris/Harmonix` |
| `oh-openttd` | 15.3 | OpenTTD | `TennousuAthena/OH-OpenTTD` |
| `ohbittorrent` | 1.0.0 | OHBittorrent | `HanversionOvO/OHBittorrent` |
| `servo` | 0.7.0 | Servo | `servo/servo` |
| `usbarc` | 1.0.1 | USBArc | `RockyMtnWolf/USBArc` |
| `vlc-qt6-ohos` | 3.0.21 | VLC播放器 | `Aloereed/vlc-qt6-ohos` |

合计 90 个 cask，未收录 25 个条目。

### 未收录的条目

| 条目 | 原因 |
| --- | --- |
| Phira | Release 里没有 .hap 或 .app 资产 |
| HMTG | 仓库没有可用的 Release |
| HiSH | Release 里没有 .hap 或 .app 资产 |
| 云享社 | 仓库没有可用的 Release |
| FinVideo | Release 里没有 .hap 或 .app 资产 |
| Gramony | 仓库没有可用的 Release |
| CanPlayerHap | Release 里没有 .hap 或 .app 资产 |
| 流心视频 | Release 里没有 .hap 或 .app 资产 |
| Moonlight | 项目主页与下载页都不在 GitHub 上 |
| OpenTwit | 仓库没有可用的 Release |
| Anx Reader | Release 里没有 .hap 或 .app 资产 |
| 拷贝漫画 | 仓库没有可用的 Release |
| Obsidian | 仓库没有可用的 Release |
| Kelivo | Release 里没有 .hap 或 .app 资产 |
| 存好 | 仓库没有可用的 Release |
| Scrcpy | Release 里没有 .hap 或 .app 资产 |
| ArkDO | 仓库没有可用的 Release |
| 轻阅读 | Release 里没有 .hap 或 .app 资产 |
| KeePassHO | Release 里没有 .hap 或 .app 资产 |
| KDAuth | Release 里没有 .hap 或 .app 资产 |
| 简听 | 仓库没有可用的 Release |
| 阅韵心读 | 仓库没有可用的 Release |
| 鸿蒙调试助手（HDA） | 项目主页与下载页都不在 GitHub 上 |
| Termony | 仓库没有可用的 Release |
| BrewLibrary | 项目主页与下载页都不在 GitHub 上 |
