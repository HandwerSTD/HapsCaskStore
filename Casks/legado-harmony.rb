cask "legado-harmony" do
  version "1.0.6.197"
  sha256 arm64_linux: "542640b0d2de1a1097d42c6627c2c51073e057a6f85fb632a50a60003736f86c"

  url "https://github.com/mgz0227/legado-Harmony/releases/download/V#{version}/Legado-1.0.6.197-26102220-unsigned.hap"
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

  ohos_app "Legado-1.0.6.197-26102220-unsigned.hap"
end
