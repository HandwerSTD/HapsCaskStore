cask "pilink" do
  version "1.1.7"
  sha256 arm64_linux: "7673253b3916d189d7c27a516ccfc7e79ba9d3de92935665c38d3f305d3e51ff"

  url "https://github.com/chai2shi-spec/pilink/releases/download/v#{version}/pilink1.1.7.hap"
  name "Pilink"
  desc "鸿蒙 B 站第三方视频播放器"
  homepage "https://github.com/chai2shi-spec/pilink"

  livecheck do
    url "https://github.com/chai2shi-spec/pilink"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "pilink1.1.7.hap"
end
