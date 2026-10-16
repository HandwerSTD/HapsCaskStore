cask "lovelyflash-jmcomic-harmonyos" do
  version "1.0.12"
  sha256 arm64_linux: "5c84fad90921ecc88e45266076ab5b852d5eccc850d0a4f28d8433957ba48846"

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
