cask "nexte" do
  version "1.3.7"
  sha256 arm64_linux: "34c1d3fa832b36ac98d4bede8424432d007c88950b5194332d8164f2a2271b36"

  url "https://github.com/erosTeam/NextE/releases/download/v#{version}/NextE_1.3.7_ohos-release-unsigned.hap"
  name "NextE"
  desc "鸿蒙原生E-Hentai/ExHentai客户端，支持画廊浏览与下载"
  homepage "https://github.com/erosTeam/NextE"

  livecheck do
    url "https://github.com/erosTeam/NextE"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "NextE_1.3.7_ohos-release-unsigned.hap"
end
