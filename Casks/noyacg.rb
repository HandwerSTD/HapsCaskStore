cask "noyacg" do
  version "1.0.1"
  sha256 arm64_linux: "f41a3be0ce6357ab39fb954e013a03f6ea6d18ef15629ac22afcfb2c129fd9ec"

  url "https://github.com/Oearawa/NoyACG/releases/download/v#{version}/NoyACG-OHOS-unsigned.hap"
  name "NoyACG"
  desc "鸿蒙原生漫画阅读客户端"
  homepage "https://github.com/Oearawa/NoyACG"

  livecheck do
    url "https://github.com/Oearawa/NoyACG"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "NoyACG-OHOS-unsigned.hap"
end
