cask "pilink" do
  version "1.1.5"
  sha256 arm64_linux: "1dda3376c32910216ae0ec1d915bab77ab5d4fb73cf3b56bbb52017abbb9031e"

  url "https://github.com/chai2shi-spec/pilink/releases/download/v#{version}/pilink1.1.5.hap"
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

  ohos_app "pilink1.1.5.hap"
end
