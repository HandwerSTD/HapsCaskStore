cask "anich" do
  version "1.5.27"
  sha256 arm64_linux: "fcc980ac77cb05b2d64db69450866824055ea0bf286e6f78b1b8efc4a98ae53e"

  url "https://github.com/Sle2p/AniCh/releases/download/#{version}/anich-ohos-unsigned-1.5.27.hap"
  name "AniCh"
  desc "多番剧源的在线动漫弹幕应用，支持超分辨率与离线缓存"
  homepage "https://github.com/Sle2p/AniCh"

  livecheck do
    url "https://github.com/Sle2p/AniCh"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "anich-ohos-unsigned-1.5.27.hap"
end
