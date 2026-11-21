cask "arkclash" do
  version "0.6.0"
  sha256 arm64_linux: "a15949b13da9ca1d9812fc43e84ed7f37b292f38de657c0a8c36a684f1367c79"

  url "https://github.com/VOD-Studio/ArkClash/releases/download/v#{version}/ArkClash-0.6.0-unsigned.hap"
  name "ArkClash"
  desc "基于 Mihomo 内核的鸿蒙代理客户端"
  homepage "https://github.com/VOD-Studio/ArkClash"

  livecheck do
    url "https://github.com/VOD-Studio/ArkClash"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "ArkClash-0.6.0-unsigned.hap"
end
