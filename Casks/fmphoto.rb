cask "fmphoto" do
  version "1.4.2.10"
  sha256 arm64_linux: "c3b9533b6cecec38933f5146f9e9f2230a41ba0536f1bcfc5bd61549e772a9a1"

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
