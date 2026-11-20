cask "view-public" do
  version "1.8.2"
  sha256 arm64_linux: "b96d985b91485a0c66ef0c92a0f95b434df3f3b30a24c6302822cf1270fc241e"

  url "https://github.com/wuqiangroy/view-public/releases/download/v#{version}/View-V1.8.2-release-signed.hap"
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

  ohos_app "View-V1.8.2-release-signed.hap"
end
