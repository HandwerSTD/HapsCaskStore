cask "vhome-release" do
  version "2.6.14"
  sha256 arm64_linux: "777922a95f4b683cc966afcd79f9cc7f2ec0970d30e815bf1d697b548e26639d"

  url "https://github.com/muleos/VHome-release/releases/download/v#{version}-beta/VHome-2.6.14-beta-unsigned.hap"
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

  ohos_app "VHome-2.6.14-beta-unsigned.hap"
end
