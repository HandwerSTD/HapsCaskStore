cask "ds-bot-harmonyos" do
  version "0.1.0"
  sha256 arm64_linux: "61632f4f24dd88f2c577cef092f9e8762e2c4a7fcf6be1adce8277c993c5db8b"

  url "https://github.com/DingXiaoWu0512/DS-Bot-HarmonyOS/releases/download/v#{version}/DS-Bot-HarmonyOS-v0.1.0.hap"
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

  ohos_app "DS-Bot-HarmonyOS-v0.1.0.hap"
end
