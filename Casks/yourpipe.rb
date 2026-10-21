cask "yourpipe" do
  version "0.7.0-1000030"
  sha256 arm64_linux: "72bb98a604ee41c1efe8c832d94cef9cee14fa1f6528baeab68d70f3cc09acfb"

  url "https://github.com/Ember5843/YourPipe/releases/download/v#{version}/YourPipe-v0.7.0-1000030-unsigned.hap"
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

  ohos_app "YourPipe-v0.7.0-1000030-unsigned.hap"
end
