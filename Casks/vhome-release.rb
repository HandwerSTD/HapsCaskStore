cask "vhome-release" do
  version "5.0.60"
  sha256 arm64_linux: "7267e1bdf0a2aa561a451d6fa206fd83f5e8bb803023d5dd2c5b717bdf2e68e0"

  url "https://github.com/muleos/VHome-release/releases/download/v#{version}-beta/VHome-5.0.60-beta-unsigned.hap"
  name "VHome (vae＋)"
  desc "许嵩粉丝社区应用鸿蒙版，支持动态、音乐与互动"
  homepage "https://github.com/muleos/VHome-release"

  livecheck do
    url "https://github.com/muleos/VHome-release"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "VHome-5.0.60-beta-unsigned.hap"
end
