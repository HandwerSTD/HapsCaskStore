cask "nexte" do
  version "1.3.9"
  sha256 arm64_linux: "20d9bbd7711ff4322f28ab7612a042cc3a0db831348891ff023e959563712800"

  url "https://github.com/erosTeam/NextE/releases/download/v#{version}/NextE_1.3.9_ohos-release-unsigned.hap"
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

  ohos_app "NextE_1.3.9_ohos-release-unsigned.hap"
end
