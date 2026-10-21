cask "flclash-ohos" do
  version "0.8.96"
  sha256 arm64_linux: "ae49f90f0fe8ae2fc5ecbbb430077cfacdd3e7dbaddf62756710325fb7c1b88d"

  url "https://github.com/tljk/FlClash-ohos/releases/download/v#{version}%2B2026102101/FlClash-0.8.96%2B2026102101-ohos.hap"
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

  ohos_app "FlClash-0.8.96+2026102101-ohos.hap"
end
