cask "yourpipe" do
  version "0.7.0-1000032"
  sha256 arm64_linux: "191bc9f4c40902b9eb9783b87ee19c9a342a1e8c46b958b15bf8edc34dbe57ca"

  url "https://github.com/Ember5843/YourPipe/releases/download/v#{version}/YourPipe-v0.7.0-1000032-unsigned.hap"
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

  ohos_app "YourPipe-v0.7.0-1000032-unsigned.hap"
end
