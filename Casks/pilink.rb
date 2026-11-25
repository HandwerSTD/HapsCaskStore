cask "pilink" do
  version "1.1.8"
  sha256 arm64_linux: "b68dc886313fc222c355f0f294495e2045b4b76391423688b3c574a5acf37cf9"

  url "https://github.com/chai2shi-spec/pilink/releases/download/v#{version}/pilink1.1.8.hap"
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

  ohos_app "pilink1.1.8.hap"
end
