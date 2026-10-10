cask "piliplus" do
  version "1.1.5.3"
  sha256 arm64_linux: "8f3033f673815027da4fc4d0b30e518f705dcb1321a6f54965fd130ab63281d0"

  url "https://github.com/dev4harmony/PiliPlus/releases/download/#{version}-ohos-1-pre2/PiliPlus_ohos_1.1.5.3-ohos-1-pre2_unsigned.hap"
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

  ohos_app "PiliPlus_ohos_1.1.5.3-ohos-1-pre2_unsigned.hap"
end
