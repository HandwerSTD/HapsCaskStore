cask "copyhomo" do
  version "1.2.1"
  sha256 arm64_linux: "c50b31d2b2e2d32c576aae3a9b870dd324601b87dce488d5a779fce18580df32"

  url "https://github.com/point258/copyhomo/releases/download/#{version}/copyhomo1.2.1-23%2B.hap"
  name "拷贝漫画"
  desc "原生鸿蒙拷贝漫画客户端，支持手机与平板阅读"
  homepage "https://github.com/point258/copyhomo"

  livecheck do
    url "https://github.com/point258/copyhomo"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "copyhomo1.2.1-23+.hap"
end
