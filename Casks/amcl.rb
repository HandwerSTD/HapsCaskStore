cask "amcl" do
  version "1.0.8"
  sha256 arm64_linux: "854515cc16b9ac80670289aad0eba7313f29e5145a0f7bbcf1594da41e204a62"

  url "https://github.com/LZZLHY/amcl/releases/download/v#{version}/amcl-v1.0.8-sideload-unsigned.hap"
  name "AMCL"
  desc "鸿蒙版全量Java版我的世界启动器"
  homepage "https://github.com/LZZLHY/amcl"

  livecheck do
    url "https://github.com/LZZLHY/amcl"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "amcl-v1.0.8-sideload-unsigned.hap"
end
