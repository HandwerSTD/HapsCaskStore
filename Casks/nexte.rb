cask "nexte" do
  version "1.3.10"
  sha256 arm64_linux: "8da301d47fb777757d4f1b9cee21b787e4c0f1b3de7ceda944538eb5a7b9f2e8"

  url "https://github.com/erosTeam/NextE/releases/download/v#{version}/NextE_1.3.10_ohos-release-unsigned.hap"
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

  ohos_app "NextE_1.3.10_ohos-release-unsigned.hap"
end
