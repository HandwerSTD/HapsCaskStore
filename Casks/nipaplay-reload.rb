cask "nipaplay-reload" do
  version "1.11.11"
  sha256 arm64_linux: "2b7a610ca4e439f328ab89586bc0aa7c4f4f63a0c943f12660992678d5b7b407"

  url "https://github.com/AimesSoft/NipaPlay-Reload/releases/download/v#{version}/NipaPlay-1.11.11-HarmonyOS-arm64-signed.hap"
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

  ohos_app "NipaPlay-1.11.11-HarmonyOS-arm64-signed.hap"
end
