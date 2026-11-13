cask "koma" do
  version "1.4.5"
  sha256 arm64_linux: "f8e39b72da3772158ff14e19b3e3419d7182e403671c54101e89f8245f509d4e"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.4.5_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.4.5_ohos-release-unsigned.hap"
end
