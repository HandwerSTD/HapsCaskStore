cask "lovelyflash-jmcomic-harmonyos" do
  version "1.1.5"
  sha256 arm64_linux: "3feb81aec7c562efa10efbb08fdfbb158c807ae889f1310f5a9d2010f4249063"

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
