cask "piliplus" do
  version "2.2.1"
  sha256 arm64_linux: "6ca42eef63c9ccbd3080fc83311fdcbb9c29f5dda3c08a083a379af0646261d7"

  url "https://github.com/dev4harmony/PiliPlus/releases/download/#{version}-ohos-2/PiliPlus_2.2.1-ohos-2_fix.hap"
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

  ohos_app "PiliPlus_2.2.1-ohos-2_fix.hap"
end
