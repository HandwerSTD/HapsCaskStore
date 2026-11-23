cask "pilink" do
  version "1.1.6"
  sha256 arm64_linux: "c9284bcb0a1888610a4e042e983e95042f3c54e5f90df22426a8bb1785209c77"

  url "https://github.com/chai2shi-spec/pilink/releases/download/v#{version}/pilink1.1.6.hap"
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

  ohos_app "pilink1.1.6.hap"
end
