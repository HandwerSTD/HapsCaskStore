cask "vhome-release" do
  version "5.0.112"
  sha256 arm64_linux: "122f3e9995900715e805b976d4b4a7d34a6d379b73b120b3e001f9b9d80f49b3"

  url "https://github.com/muleos/VHome-release/releases/download/v#{version}-beta/VHome-5.0.112-beta-unsigned.hap"
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

  ohos_app "VHome-5.0.112-beta-unsigned.hap"
end
