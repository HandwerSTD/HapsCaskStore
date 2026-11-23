cask "yuanchu-tec-jmcomic-harmonyos" do
  version "1.1.0"
  sha256 arm64_linux: "7613eb51ad3fff4993e63f94678130a083d59260345b4de713c3dba0a5e8011c"

  url "https://github.com/YuanChu-Tec/JMComic-HarmonyOS/releases/download/JMComic#{version}/JMComic1.1.0.hap"
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

  ohos_app "JMComic1.1.0.hap"
end
