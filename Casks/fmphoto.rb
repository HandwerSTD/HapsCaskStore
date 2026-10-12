cask "fmphoto" do
  version "1.4.2.9"
  sha256 arm64_linux: "023edde841f025d67f116f92bd769965eec456570520e2e86521429ae4b3567b"

  url "https://github.com/jonas-pi/FMphoto/releases/download/v#{version}/entry-default-unsigned.hap"
  name "飞马相册"
  desc "用于在手机上连接飞牛 NAS，使用相册、网页入口及常见图库能力"
  homepage "https://github.com/jonas-pi/FMphoto"

  livecheck do
    url "https://github.com/jonas-pi/FMphoto"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
