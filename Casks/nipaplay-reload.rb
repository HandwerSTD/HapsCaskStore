cask "nipaplay-reload" do
  version "2.0.0"
  sha256 arm64_linux: "d487563dc563991bfdb21775afac72e3bf8d0862620f6c86f05448a53a34e3db"

  url "https://github.com/AimesSoft/NipaPlay-Reload/releases/download/v#{version}-alpha.7/NipaPlay-2.0.0-alpha.7-HarmonyOS-arm64-signed.hap"
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

  ohos_app "NipaPlay-2.0.0-alpha.7-HarmonyOS-arm64-signed.hap"
end
