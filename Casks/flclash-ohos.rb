cask "flclash-ohos" do
  version "0.8.99"
  sha256 arm64_linux: "e25b19fa903edfc3d66a468f689b1f42206fb8fb50374975d44eceaf2e7c5571"

  url "https://github.com/tljk/FlClash-ohos/releases/download/v#{version}%2B2026110201/FlClash-0.8.99%2B2026110201-ohos.hap"
  name "FlClash"
  desc "基于ClashMeta的多平台代理客户端"
  homepage "https://github.com/tljk/FlClash-ohos"

  livecheck do
    url "https://github.com/tljk/FlClash-ohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "FlClash-0.8.99+2026110201-ohos.hap"
end
