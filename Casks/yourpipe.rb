cask "yourpipe" do
  version "0.7.2-1000035"
  sha256 arm64_linux: "5a04687793501a0c2556fc5e0f5e14468f62c5dd192a93ebf335e5f8f74e8d3f"

  url "https://github.com/Ember5843/YourPipe/releases/download/v#{version}/YourPipe-v0.7.2-1000035-unsigned.hap"
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

  ohos_app "YourPipe-v0.7.2-1000035-unsigned.hap"
end
