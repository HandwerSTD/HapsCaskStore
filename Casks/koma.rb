cask "koma" do
  version "1.5.5"
  sha256 arm64_linux: "6e7e8c2f7bd46a05b67d478bc7715e47e9e09931173176a6729f28829985d14d"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.5.5_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.5.5_ohos-release-unsigned.hap"
end
