cask "picacomic-ohos" do
  version "4.8.8"
  sha256 arm64_linux: "e1cbcbccd74669c94573ad831fe600d23d7b17036d77a2959c81e8744b338413"

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
