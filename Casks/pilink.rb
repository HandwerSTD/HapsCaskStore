cask "pilink" do
  version "1.1.9"
  sha256 arm64_linux: "f7c094cd22bc27550f0dc673c9286f09d7ec32a1a71888ab61052e943caf97ec"

  url "https://github.com/chai2shi-spec/pilink/releases/download/v#{version}/pilink1.1.9.hap"
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

  ohos_app "pilink1.1.9.hap"
end
