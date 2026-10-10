cask "appbundlenameforshared" do
  version "1.2"
  sha256 arm64_linux: "96c2c1a0f3dc4d5bde677b5cd566b00fafb3a43e018e29908652479a084fd5f4"

  url "https://github.com/SummerKaze/AppBundleNameForShared/releases/download/V#{version}/entry-default-unsigned.hap"
  name "包名解析"
  desc "一款用于从华为应用商城分享链接中提取应用包名的鸿蒙工具"
  homepage "https://github.com/SummerKaze/AppBundleNameForShared"

  livecheck do
    url "https://github.com/SummerKaze/AppBundleNameForShared"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
