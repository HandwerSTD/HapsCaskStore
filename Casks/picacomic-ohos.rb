cask "picacomic-ohos" do
  version "4.8.3"
  sha256 arm64_linux: "235d0deea76282bdb2146790a2da2b0efc953aebd20aa1518d783cdd148fdcb0"

  url "https://github.com/nimmi114514/PicaComic_ohos/releases/download/v#{version}-beta3/entry-default-unsigned.hap"
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
