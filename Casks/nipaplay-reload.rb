cask "nipaplay-reload" do
  version "1.11.6"
  sha256 arm64_linux: "52f74325027a200fd1d43137ac678e584e495e257a377dd77890d0e543d55234"

  url "https://github.com/AimesSoft/NipaPlay-Reload/releases/download/v#{version}/NipaPlay-1.11.6-HarmonyOS-arm64-signed.hap"
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

  ohos_app "NipaPlay-1.11.6-HarmonyOS-arm64-signed.hap"
end
