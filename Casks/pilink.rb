cask "pilink" do
  version "1.1.3"
  sha256 arm64_linux: "5b472ca088f9bbddba61947badc79d44accb250bcc29fce15c964e95eee4b1a2"

  url "https://github.com/chai2shi-spec/pilink/releases/download/v#{version}/pilink1.1.3.hap"
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

  ohos_app "pilink1.1.3.hap"
end
