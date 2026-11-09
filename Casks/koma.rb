cask "koma" do
  version "1.4.1"
  sha256 arm64_linux: "ca46f1a9cca1d6ac2809465d5185ee0d195bab6f7e13a686322c6036e68f91df"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.4.1_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.4.1_ohos-release-unsigned.hap"
end
