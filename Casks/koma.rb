cask "koma" do
  version "1.6.2"
  sha256 arm64_linux: "ce74ab2dff8033ba6412411683fbe23894335792e8faa99101fa4afc3c3cbec7"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.6.2_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.6.2_ohos-release-unsigned.hap"
end
