cask "picacomic-ohos" do
  version "5.0.0"
  sha256 arm64_linux: "c5f3ec04bfca096039e5f4eaa0a36a2e3687a851d12ab62079e79344bc338389"

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
