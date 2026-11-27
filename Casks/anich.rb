cask "anich" do
  version "1.5.28"
  sha256 arm64_linux: "d54b751dc6cfd577b5facf23b88915b34cbef526e7e04e4de6061aad1d772b9c"

  url "https://github.com/Sle2p/AniCh/releases/download/#{version}/anich-ohos-unsigned-1.5.28.hap"
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

  ohos_app "anich-ohos-unsigned-1.5.28.hap"
end
