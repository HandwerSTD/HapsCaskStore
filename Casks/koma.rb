cask "koma" do
  version "1.6.1"
  sha256 arm64_linux: "31053d2107411fda1174717ee121b73d3052c024403c577bdb845b828f5e98b5"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.6.1_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.6.1_ohos-release-unsigned.hap"
end
