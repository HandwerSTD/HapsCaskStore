cask "picacomic-ohos" do
  version "5.0.5"
  sha256 arm64_linux: "fbb3504bab5392dc1302150d71bcf9403fbd35a49598e4d5a2e1acb53d5a9847"

  url "https://github.com/nimmi114514/PicaComic_ohos/releases/download/v#{version}/entry-default-unsigned.hap"
  name "Pica Comic"
  desc "一款使用 Flutter 构建的多源漫画应用"
  homepage "https://github.com/nimmi114514/PicaComic_ohos"

  livecheck do
    url "https://github.com/nimmi114514/PicaComic_ohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
