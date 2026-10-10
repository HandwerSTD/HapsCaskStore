cask "vhome-release" do
  version "2.6.14"
  sha256 arm64_linux: "dbae0b741119aff3411588642daf847dc59f695170d09d347bb83718d9837fa0"

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
