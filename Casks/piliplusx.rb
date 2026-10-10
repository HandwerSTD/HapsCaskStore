cask "piliplusx" do
  version "1.1.6.4"
  sha256 arm64_linux: "b87314675601846a3cf2064cd3cfbba2dfe1638454da30efec56ba55e2ad10d4"

  url "https://github.com/cnctem/PiliPlusX/releases/download/v#{version}/PiliPlusX_ohos_v1.1.6.4_unsigned.hap"
  name "PiliPlusX"
  desc "基于Flutter开发的B站第三方客户端"
  homepage "https://github.com/cnctem/PiliPlusX"

  livecheck do
    url "https://github.com/cnctem/PiliPlusX"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "PiliPlusX_ohos_v1.1.6.4_unsigned.hap"
end
