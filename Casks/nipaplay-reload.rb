cask "nipaplay-reload" do
  version "2.0.0"
  sha256 arm64_linux: "8f5a20a82b2f016a8857e72e9f4bbbf123087784e0f688c72e20dd247b9d2f64"

  url "https://github.com/AimesSoft/NipaPlay-Reload/releases/download/v#{version}-alpha.5/NipaPlay-2.0.0-alpha.5-HarmonyOS-arm64-signed.hap"
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

  ohos_app "NipaPlay-2.0.0-alpha.5-HarmonyOS-arm64-signed.hap"
end
