cask "nexte" do
  version "1.3.8"
  sha256 arm64_linux: "f36da90dc9fe86aa693dfe70979c27cb0a79f98c53213dce1eed01ed81e1cdf9"

  url "https://github.com/erosTeam/NextE/releases/download/v#{version}/NextE_1.3.8_ohos-release-unsigned.hap"
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

  ohos_app "NextE_1.3.8_ohos-release-unsigned.hap"
end
