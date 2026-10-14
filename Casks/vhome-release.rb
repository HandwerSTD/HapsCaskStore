cask "vhome-release" do
  version "2.6.14"
  sha256 arm64_linux: "0c19ae85f91f11bbebd116afaabd4b205a5dcec3432e2696153c39a1477e1703"

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
