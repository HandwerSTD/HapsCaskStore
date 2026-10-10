cask "legado-harmony" do
  version :latest
  sha256 :no_check

  url "https://github.com/mgz0227/legado-Harmony/releases/latest/download/Legado-Beta-26042323-unsigned.hap"
  name "开源阅读"
  desc "一款支持自定义书源规则，可抓取任意网页内容进行阅读的开源应用"
  homepage "https://github.com/mgz0227/legado-Harmony"

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Legado-Beta-26042323-unsigned.hap"
end
