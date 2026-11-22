cask "koma" do
  version "1.6.0"
  sha256 arm64_linux: "e1dbbde96b1695fea789ce046f920d975bccc62f32ad2c637ec60a684098fa9c"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.6.0_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.6.0_ohos-release-unsigned.hap"
end
