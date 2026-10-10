cask "videojx" do
  version :latest
  sha256 :no_check

  url "https://github.com/xiaomoHM/videoJX/releases/latest/download/yingshilian-HM.hap"
  name "影视链"
  desc "集成多个解析接口，搜索播放全网视频的解析播放器"
  homepage "https://github.com/xiaomoHM/videoJX"

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "yingshilian-HM.hap"
end
