cask "lovelyflash-jmcomic-harmonyos" do
  version "1.1.1"
  sha256 arm64_linux: "b0c302bb3ea89dc37425a6393e60620d890049bb87ba5dda3a6403796eca80f8"

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
