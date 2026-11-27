cask "koma" do
  version "1.6.4"
  sha256 arm64_linux: "bf7f87a40b08d04aa83e2a065e49e18c3e8735b1e4abc9d6bd55c0b7beecc2ca"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.6.4_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.6.4_ohos-release-unsigned.hap"
end
