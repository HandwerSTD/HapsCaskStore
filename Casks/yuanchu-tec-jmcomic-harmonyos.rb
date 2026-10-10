cask "yuanchu-tec-jmcomic-harmonyos" do
  version "1.0.10"
  sha256 arm64_linux: "16b31779bf803c0adbf4ff63d1f6b6bb84e18302e504c05c23aa2619963d1aee"

  url "https://github.com/YuanChu-Tec/JMComic-HarmonyOS/releases/download/JMComic#{version}/JMComic1.0.10.hap"
  name "JMComic"
  desc "漫画阅读工具（作者：YuanChu-Tec）"
  homepage "https://github.com/YuanChu-Tec/JMComic-HarmonyOS"

  livecheck do
    url "https://github.com/YuanChu-Tec/JMComic-HarmonyOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "JMComic1.0.10.hap"
end
