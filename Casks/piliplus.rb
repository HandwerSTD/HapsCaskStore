cask "piliplus" do
  version "2.2.1"
  sha256 arm64_linux: "7183a5bbda5938c47ab7acc3616a7b940030e4dd13b855aa91ac4274427f12d1"

  url "https://github.com/dev4harmony/PiliPlus/releases/download/#{version}-ohos-3/PiliPlus_ohos_2.2.1-ohos-3_unsigned.hap"
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

  ohos_app "PiliPlus_ohos_2.2.1-ohos-3_unsigned.hap"
end
