cask "nexte" do
  version "1.3.6"
  sha256 arm64_linux: "2c6dbaf99920b82a5638005ee8fea9694d0e0d5916786b1d498ba9d42b08c79f"

  url "https://github.com/erosTeam/NextE/releases/download/v#{version}/NextE_1.3.6_ohos-release-unsigned.hap"
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

  ohos_app "NextE_1.3.6_ohos-release-unsigned.hap"
end
