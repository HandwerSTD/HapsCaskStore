cask "piliplus" do
  version "2.1.6.2"
  sha256 arm64_linux: "1c13c11dc2a649144a2432629dc3b4bc4d0ca9bbf2897836e86bfd51e0aa8f5b"

  url "https://github.com/dev4harmony/PiliPlus/releases/download/#{version}-ohos-2/PiliPlus_ohos_2.1.6.2-ohos-2_unsigned.hap"
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

  ohos_app "PiliPlus_ohos_2.1.6.2-ohos-2_unsigned.hap"
end
