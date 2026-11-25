cask "arkclash" do
  version "0.6.2"
  sha256 arm64_linux: "5eb313cf7c88b0f5bbdabc664dd796bf07ee0470f1120dd0a19c4801db26eef5"

  url "https://github.com/VOD-Studio/ArkClash/releases/download/v#{version}/ArkClash-0.6.2-debug-signed.hap"
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

  ohos_app "ArkClash-0.6.2-debug-signed.hap"
end
