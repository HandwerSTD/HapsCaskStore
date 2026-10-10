cask "pokedex-next" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/Luxcis/Pokedex_Next/releases/download/v#{version}/entry-default-signed.hap"
  name "宝可梦图鉴"
  desc "一款用于查询宝可梦、招式及特性详细信息的图鉴应用"
  homepage "https://github.com/Luxcis/Pokedex_Next"

  livecheck do
    url "https://github.com/Luxcis/Pokedex_Next"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-signed.hap"
end
