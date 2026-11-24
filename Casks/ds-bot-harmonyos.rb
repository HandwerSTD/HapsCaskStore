cask "ds-bot-harmonyos" do
  version "0.3.10"
  sha256 arm64_linux: "9c89c5c7e7aa0c35fe01f163cf0005dbd263d55d88ff0da450013eba03496df6"

  url "https://github.com/DingXiaoWu0512/DS-Bot-HarmonyOS/releases/download/v#{version}/DS-Bot-HarmonyOS-v0.3.10.hap"
  name "DS-Bot-HarmonyOS"
  desc "鸿蒙原生 DS Bot 对话客户端"
  homepage "https://github.com/DingXiaoWu0512/DS-Bot-HarmonyOS"

  livecheck do
    url "https://github.com/DingXiaoWu0512/DS-Bot-HarmonyOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "DS-Bot-HarmonyOS-v0.3.10.hap"
end
