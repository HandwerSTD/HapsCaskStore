cask "koma" do
  version "1.4.0"
  sha256 arm64_linux: "425770f37ebdb190446f657dc398c61ad02925f5ad2645468157f174e8a8e409"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.4.0_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.4.0_ohos-release-unsigned.hap"
end
