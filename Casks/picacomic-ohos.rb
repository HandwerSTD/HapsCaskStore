cask "picacomic-ohos" do
  version "5.1.1"
  sha256 arm64_linux: "5e1eda77a187970489c4a133aedd395953ba3ffabfbb08d540dc5defda450e65"

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
