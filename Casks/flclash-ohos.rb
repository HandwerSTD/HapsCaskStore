cask "flclash-ohos" do
  version "0.8.99"
  sha256 arm64_linux: "4f944a24bac639ff67bd1f52565d942b42c570234fa9d096d72cba3b3741ef28"

  url "https://github.com/tljk/FlClash-ohos/releases/download/v#{version}%2B2026112001/FlClash-0.8.99%2B2026112001-ohos.hap"
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

  ohos_app "FlClash-0.8.99+2026112001-ohos.hap"
end
