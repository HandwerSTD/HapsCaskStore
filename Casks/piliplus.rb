cask "piliplus" do
  version "2.1.6.2"
  sha256 arm64_linux: "c1b14c8d62d2b197f9f0f2e757eeb40fe9b1df5d2612adad3ce5e641fc88d181"

  url "https://github.com/dev4harmony/PiliPlus/releases/download/#{version}-ohos-4/PiliPlus_ohos_2.1.6.2-ohos-4_unsigned.hap"
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

  ohos_app "PiliPlus_ohos_2.1.6.2-ohos-4_unsigned.hap"
end
