cask "videojx" do
  version "HM"
  sha256 arm64_linux: "844e2abcc711c088464f453f80909913b7d4a4abd56f656728a4f06ca1d2ccb1"

  url "https://github.com/xiaomoHM/videoJX/releases/download/#{version}/yingshilian-HM.hap"
  name "影视链"
  desc "集成多个解析接口，搜索播放全网视频的解析播放器"
  homepage "https://github.com/xiaomoHM/videoJX"

  livecheck do
    url "https://github.com/xiaomoHM/videoJX"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "yingshilian-HM.hap"
end
