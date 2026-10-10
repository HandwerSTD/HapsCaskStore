cask "nexte" do
  version "1.3.5"
  sha256 arm64_linux: "7709183c72848f52d115b46dfa9269b75aecdb24f3f72794b1108fad08bec225"

  url "https://github.com/erosTeam/NextE/releases/download/v#{version}/NextE_1.3.5_ohos-release-unsigned.hap"
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

  ohos_app "NextE_1.3.5_ohos-release-unsigned.hap"
end
