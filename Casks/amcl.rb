cask "amcl" do
  version "1.0.8"
  sha256 arm64_linux: "8d6d40b5807977abf82a58f7ccf6148c7628608f76ac703226edb83442d38365"

  url "https://github.com/LZZLHY/amcl/releases/download/v#{version}-pre1/amcl-v1.0.8-pre1-sideload-unsigned.hap"
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

  ohos_app "amcl-v1.0.8-pre1-sideload-unsigned.hap"
end
