cask "legado-harmony" do
  version "1.0.6.218"
  sha256 arm64_linux: "d1ee1c5eac99a3e927e50b9946bb35ea43d321ee4327913ad2ebdfde126e08d7"

  url "https://github.com/mgz0227/legado-Harmony/releases/download/V#{version}/Legado-1.0.6.218-26102521-unsigned.hap"
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

  ohos_app "Legado-1.0.6.218-26102521-unsigned.hap"
end
