cask "flclash-ohos" do
  version "0.8.94"
  sha256 arm64_linux: "a04f700caaceb4e97f3eff63ded83f7226b3e12889286b5e8e300b5472fdbb02"

  url "https://github.com/tljk/FlClash-ohos/releases/download/v#{version}%2B2026091802/FlClash-0.8.94%2B2026091802-ohos.hap"
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

  ohos_app "FlClash-0.8.94+2026091802-ohos.hap"
end
