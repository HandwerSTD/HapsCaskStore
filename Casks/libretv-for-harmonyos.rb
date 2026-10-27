cask "libretv-for-harmonyos" do
  version "2.3.6"
  sha256 arm64_linux: "b1883aedaa58a0c6c42ef4a641ad7847ca264386b66c9acddb198ded41ac7c2f"

  url "https://github.com/panhaichen-creator/LibreTV-for-HarmonyOS/releases/download/#{version}/entry-default-unsigned.hap"
  name "LibreTV"
  desc "鸿蒙原生影视聚合客户端，支持多源搜索与直播播放"
  homepage "https://github.com/panhaichen-creator/LibreTV-for-HarmonyOS"

  livecheck do
    url "https://github.com/panhaichen-creator/LibreTV-for-HarmonyOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
