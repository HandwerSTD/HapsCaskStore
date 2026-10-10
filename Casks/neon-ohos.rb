cask "neon-ohos" do
  version "1.0.0"
  sha256 arm64_linux: "3a1ac22493fb55801af35988a7cb466484bf2d15ef2ddd6810cd0211ff61fe9e"

  url "https://github.com/shokakucarrier/neon-ohos/releases/download/neon-ohos-v#{version}/entry-default-unsigned.hap"
  name "Neon"
  desc "鸿蒙版Nextcloud客户端，可连接管理个人云盘"
  homepage "https://github.com/shokakucarrier/neon-ohos"

  livecheck do
    url "https://github.com/shokakucarrier/neon-ohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
