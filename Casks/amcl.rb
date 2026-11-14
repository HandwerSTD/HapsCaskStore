cask "amcl" do
  version "1.0.7"
  sha256 arm64_linux: "4cc219cd47937e8f882fd2792733f31053ff2b75725fede864dbac271517bf4d"

  url "https://github.com/LZZLHY/amcl/releases/download/v#{version}/amcl-v1.0.7-sideload-unsigned.hap"
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

  ohos_app "amcl-v1.0.7-sideload-unsigned.hap"
end
