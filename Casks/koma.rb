cask "koma" do
  version "1.5.1"
  sha256 arm64_linux: "8ebc05137fed832dc9e2c2839bf66271923fdad370a687532adf3f698862eeae"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.5.1_ohos-release-unsigned.hap"
  name "Koma"
  desc "鸿蒙原生多源漫画书架与阅读器"
  homepage "https://github.com/honjow/Koma"

  livecheck do
    url "https://github.com/honjow/Koma"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Koma_1.5.1_ohos-release-unsigned.hap"
end
