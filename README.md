# mpv-setting

个人使用的mpv设置，兼容mpv-net

## 插件

- bilibiliAssert：配合 [使用 MPV 播放](https://github.com/LuckyPuppy514/Play-With-MPV) 可以将b站视频拉取到视频副字幕上作为弹幕播放
- danmaku.dll：通过匹配本地视频或网络视频流的hash来匹配dandanplay的弹幕库
- inputevent.lua：更精细的控制插件
- clipboard-sub.lua：从剪贴板读取网址，从网址下载字幕文件并读取作为字幕
- thumbfast.lua：略缩图

## 快捷键

- Ctrl+Shift+s：开启clipboard-sub.lua，从剪贴板读取网址，从网址下载字幕文件并读取作为字幕
- CTRL+d：开启danmaku.dll，匹配dandanplay的弹幕库
- 长按→：三倍速播放
- CTRL+4：Anime4K超分（Mode A+A (HQ)）
- CTRL+0：取消超分
- 滚轮上下：调节音量

更多快捷键详见 `input.conf`
