cask "koma" do
  version "1.5.6"
  sha256 arm64_linux: "953dfdf62e5d6eb77b71e082d5bf84bba4bcd47f5cee9a9ce6939b92d0be8c07"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.5.6_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.5.6_ohos-release-unsigned.hap"
end
