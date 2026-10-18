cask "piliplus" do
  version "2.1.6.2"
  sha256 arm64_linux: "876c9aa1b746c7f314a6c8ff50c277192f432df3ad1c770ed594447dce002a13"

  url "https://github.com/dev4harmony/PiliPlus/releases/download/#{version}-ohos/PiliPlus_ohos_2.1.6.2-ohos_unsigned.hap"
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

  ohos_app "PiliPlus_ohos_2.1.6.2-ohos_unsigned.hap"
end
