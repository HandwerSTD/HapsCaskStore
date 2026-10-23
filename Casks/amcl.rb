cask "amcl" do
  version "1.0.6"
  sha256 arm64_linux: "f6b597c49a5abf2f143bba955dab7facfba52039204b6bb264aac8def7979796"

  url "https://github.com/LZZLHY/amcl/releases/download/v#{version}/amcl-v1.0.6-sideload-unsigned.hap"
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

  ohos_app "amcl-v1.0.6-sideload-unsigned.hap"
end
