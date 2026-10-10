cask "yourpipe" do
  version "0.6.0-1000029"
  sha256 arm64_linux: "fdd14176e1ccc2e4751e2523dc614a9cbcd9cae5b6a767e0778e81a183dc483e"

  url "https://github.com/Ember5843/YourPipe/releases/download/v#{version}/YourPipe-v0.6.0-1000029-unsigned.hap"
  name "YourPipe"
  desc "基于NewPipe Extractor的鸿蒙YouTube客户端"
  homepage "https://github.com/Ember5843/YourPipe"

  livecheck do
    url "https://github.com/Ember5843/YourPipe"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "YourPipe-v0.6.0-1000029-unsigned.hap"
end
