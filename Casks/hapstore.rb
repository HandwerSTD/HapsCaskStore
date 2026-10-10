cask "hapstore" do
  version "1.0.0"
  sha256 arm64_linux: "561263736fe75699bae418543189ebf3f2395500c27a1922ad35b8f0207e3cb3"

  url "https://github.com/zhailinlang/hapstore/releases/download/v#{version}/HapStore-v1.0.0-signed.hap"
  name "HapStore"
  desc "未上架 HAP 的聚合目录应用，可浏览、搜索与下载"
  homepage "https://github.com/zhailinlang/hapstore"

  livecheck do
    url "https://github.com/zhailinlang/hapstore"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "HapStore-v1.0.0-signed.hap"
end
