cask "view-public" do
  version "1.8.3"
  sha256 arm64_linux: "f67ff8b757279d72908bb395b517774b56abf7273af85eb448947b02339ec887"

  url "https://github.com/wuqiangroy/view-public/releases/download/v#{version}/View-v1.8.3-release-signed.hap"
  name "微博"
  desc "鸿蒙第三方微博客户端"
  homepage "https://github.com/wuqiangroy/view-public"

  livecheck do
    url "https://github.com/wuqiangroy/view-public"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "View-v1.8.3-release-signed.hap"
end
