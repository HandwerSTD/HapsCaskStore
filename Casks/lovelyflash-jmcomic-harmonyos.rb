cask "lovelyflash-jmcomic-harmonyos" do
  version "1.1.4"
  sha256 arm64_linux: "9aeb7557ce1a57a54720a3065f1a3e1c607ec0c3d10256345420a82de2a0af7b"

  url "https://github.com/LovelyFlash/JMComic-HarmonyOS/releases/download/v#{version}/entry-default-signed.hap"
  name "JMComic"
  desc "漫画阅读工具（作者：LovelyFlash）"
  homepage "https://github.com/LovelyFlash/JMComic-HarmonyOS"

  livecheck do
    url "https://github.com/LovelyFlash/JMComic-HarmonyOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-signed.hap"
end
