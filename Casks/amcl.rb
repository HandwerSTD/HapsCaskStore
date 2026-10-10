cask "amcl" do
  version "1.0.5"
  sha256 arm64_linux: "15e1a1f5d3e3890837a21fb6b579c6b731e3e26fbf0b797572188888736c125f"

  url "https://github.com/LZZLHY/amcl/releases/download/v#{version}/amcl-v1.0.5-unsigned.hap"
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

  ohos_app "amcl-v1.0.5-unsigned.hap"
end
