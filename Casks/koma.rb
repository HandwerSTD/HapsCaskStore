cask "koma" do
  version "1.5.4"
  sha256 arm64_linux: "220af7ebcd4ed5060fe6be223ae341b95e502ac850945d6d3056925732a718f0"

  url "https://github.com/honjow/Koma/releases/download/v#{version}/Koma_1.5.4_ohos-release-unsigned.hap"
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

  ohos_app "Koma_1.5.4_ohos-release-unsigned.hap"
end
