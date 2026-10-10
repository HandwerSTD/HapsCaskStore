cask "legado-harmony" do
  version "1.0.6.158"
  sha256 arm64_linux: "06a0b525096119461f82d1d7d88e35dcf32d4ae015540b0ee9fd2b497bbec97d"

  url "https://github.com/mgz0227/legado-Harmony/releases/download/V#{version}/Legado-1.0.6.158-26090920-signed.hap"
  name "开源阅读"
  desc "一款支持自定义书源规则，可抓取任意网页内容进行阅读的开源应用"
  homepage "https://github.com/mgz0227/legado-Harmony"

  livecheck do
    url "https://github.com/mgz0227/legado-Harmony"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Legado-1.0.6.158-26090920-signed.hap"
end
