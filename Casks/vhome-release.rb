cask "vhome-release" do
  version "2.6.14"
  sha256 arm64_linux: "f06be7e1d355bfb1a2daca253aedcca6b56a0160b1592b5a75bde2ec697be752"

  url "https://github.com/muleos/VHome-release/releases/download/v#{version}/VHome-2.6.14.hap"
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

  ohos_app "VHome-2.6.14.hap"
end
