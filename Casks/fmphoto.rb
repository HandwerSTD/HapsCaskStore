cask "fmphoto" do
  version "1.4.2"
  sha256 arm64_linux: "56123a73b50880d1d0ffdc78b8d0f0f6198bdcabe6311cc2edc49e31a75e2707"

  url "https://github.com/jonas-pi/FMphoto/releases/download/v#{version}-beta.1/entry-default-unsigned.hap"
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
