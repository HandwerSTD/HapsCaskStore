cask "koma" do
  version "1.4.3"
  sha256 arm64_linux: "2493f84207ba052dfe71e6e9c7687e5016284638b952b601ffd32f096359b24b"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.4.3_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.4.3_ohos-release-unsigned.hap"
end
