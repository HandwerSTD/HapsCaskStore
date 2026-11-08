cask "piliplus" do
  version "2.1.6.2"
  sha256 arm64_linux: "b3f17825cf9283beee30dcc9a522d77eea5949aad9a65376539592ec8c2c3f31"

  url "https://github.com/dev4harmony/PiliPlus/releases/download/#{version}-ohos-3/PiliPlus_ohos_2.1.6.2-ohos-3_unsigned.hap"
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

  ohos_app "PiliPlus_ohos_2.1.6.2-ohos-3_unsigned.hap"
end
