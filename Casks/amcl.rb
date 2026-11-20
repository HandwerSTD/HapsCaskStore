cask "amcl" do
  version "1.0.8"
  sha256 arm64_linux: "04cef954a07810830355ec6e75ae1f82b8e43b92994c14180b162fbdb2811177"

  url "https://github.com/LZZLHY/amcl/releases/download/v#{version}-pre2/amcl-v1.0.8-pre2-sideload-unsigned.hap"
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

  ohos_app "amcl-v1.0.8-pre2-sideload-unsigned.hap"
end
