cask "piliplus" do
  version "2.1.5"
  sha256 arm64_linux: "e03c149d8b777cda7b467f4b595dc9e9501c9a029bc54cb3a2cb2df0846074e9"

  url "https://github.com/dev4harmony/PiliPlus/releases/download/#{version}-ohos-2/PiliPlus_ohos_2.1.5-ohos-2_unsigned.hap"
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

  ohos_app "PiliPlus_ohos_2.1.5-ohos-2_unsigned.hap"
end
