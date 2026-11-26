cask "lovelyflash-jmcomic-harmonyos" do
  version "1.2.0"
  sha256 arm64_linux: "5141b52da2ad9cf4f6d070e95e1f75f32b02cf57790f57350788b28fa6237bf4"

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
