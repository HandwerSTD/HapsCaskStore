cask "koma" do
  version "1.5.2"
  sha256 arm64_linux: "709e056c3161d91b6f2c2deb70c509810aacf4fbfa59bf7a5df8231488b48d66"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.5.2_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.5.2_ohos-release-unsigned.hap"
end
