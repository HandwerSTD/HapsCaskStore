cask "piliplus" do
  version "2.1.5"
  sha256 arm64_linux: "aa7f3ef1674dc522d2e6f1b4de2c0808be6365f2bf63f0d2bd96e48905e25f40"

  url "https://github.com/dev4harmony/PiliPlus/releases/download/#{version}-ohos/PiliPlus_ohos_2.1.5-ohos_unsigned.hap"
  name "PiliPlus"
  desc "BiliBili第三方客户端"
  homepage "https://github.com/dev4harmony/PiliPlus"

  livecheck do
    url "https://github.com/dev4harmony/PiliPlus"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "PiliPlus_ohos_2.1.5-ohos_unsigned.hap"
end
