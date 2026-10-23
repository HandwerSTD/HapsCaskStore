cask "nipaplay-reload" do
  version "1.11.10"
  sha256 arm64_linux: "2e2fafd9880febbb8f98d502f6f6f29007890f4ebfc2de8b9bfc212fb0034f9c"

  url "https://github.com/AimesSoft/NipaPlay-Reload/releases/download/v#{version}/NipaPlay-1.11.10-HarmonyOS-arm64-signed.hap"
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

  ohos_app "NipaPlay-1.11.10-HarmonyOS-arm64-signed.hap"
end
