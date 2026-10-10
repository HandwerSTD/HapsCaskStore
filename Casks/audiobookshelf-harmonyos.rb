cask "audiobookshelf-harmonyos" do
  version "2.3.0"
  sha256 arm64_linux: "93a9daf3dbd1122812fd230a7b7c190340507d84e0277f2faceec1d834d7c953"

  url "https://github.com/shanyan-wcx/Audiobookshelf-HarmonyOS/releases/download/v#{version}/Harmshelf-v2.3.0-unsigned.hap"
  name "Harmshelf"
  desc "连接 Audiobookshelf 私人有声书服务器的鸿蒙客户端"
  homepage "https://github.com/shanyan-wcx/Audiobookshelf-HarmonyOS"

  livecheck do
    url "https://github.com/shanyan-wcx/Audiobookshelf-HarmonyOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Harmshelf-v2.3.0-unsigned.hap"
end
