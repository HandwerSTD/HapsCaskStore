cask "koma" do
  version "1.6.3"
  sha256 arm64_linux: "bd74fdd87196e769199fda6ec60cbe82a86344715d5d68ba396235fde4515bdc"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.6.3_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.6.3_ohos-release-unsigned.hap"
end
