cask "koma" do
  version "1.4.4"
  sha256 arm64_linux: "9c19969cd21427ac8521d630b0ad9a48fbf5bb884f36ef5bea89e70b581a6f68"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.4.4_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.4.4_ohos-release-unsigned.hap"
end
