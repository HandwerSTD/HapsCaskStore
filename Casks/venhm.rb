cask "venhm" do
  version "1.0.11"
  sha256 arm64_linux: "93cdbc3a31f8037bb5ecc5f9ebbbe40e94df4eb73a5c4621f7b211b6d802fca7"

  url "https://github.com/CangShui/VenHM/releases/download/v#{version}/VenHM-1.0.11-signed.hap"
  name "VenHM"
  desc "支持多源换源的鸿蒙原生漫画阅读器"
  homepage "https://github.com/CangShui/VenHM"

  livecheck do
    url "https://github.com/CangShui/VenHM"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "VenHM-1.0.11-signed.hap"
end
