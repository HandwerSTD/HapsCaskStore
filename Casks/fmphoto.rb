cask "fmphoto" do
  version "1.4.2.8"
  sha256 arm64_linux: "62f7af116115ac6e5d8b275b988e538486e75c50089a0388a9f90fa4fbed80ad"

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
