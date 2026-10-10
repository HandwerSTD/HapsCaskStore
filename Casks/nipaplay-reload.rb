cask "nipaplay-reload" do
  version "1.11.9"
  sha256 arm64_linux: "fc6fab86777f35fbd746ebb789c8bb8c20f8832df9ae3239de5dad2f1f6238eb"

  url "https://github.com/AimesSoft/NipaPlay-Reload/releases/download/v#{version}/NipaPlay-1.11.9-HarmonyOS-arm64-signed.hap"
  name "NipaPlay"
  desc "二次元媒体管理器，支持弹幕播放与媒体库集成"
  homepage "https://github.com/AimesSoft/NipaPlay-Reload"

  livecheck do
    url "https://github.com/AimesSoft/NipaPlay-Reload"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "NipaPlay-1.11.9-HarmonyOS-arm64-signed.hap"
end
