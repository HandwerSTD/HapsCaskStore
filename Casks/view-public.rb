cask "view-public" do
  version "1.8.0"
  sha256 arm64_linux: "fe618e045aa0b2981a71f4255b727be6896f1d155e89af7a2930cb63ed4b8783"

  url "https://github.com/wuqiangroy/view-public/releases/download/v#{version}/View-v1.8.0-release-signed.hap"
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

  ohos_app "View-v1.8.0-release-signed.hap"
end
