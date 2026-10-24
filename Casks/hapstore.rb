cask "hapstore" do
  version "1.0.1"
  sha256 arm64_linux: "f30c6635caaa4a290fd467c88df3e4889b62c4d41b04fa06ff30a3ba5bd61fff"

  url "https://github.com/zhailinlang/hapstore/releases/download/v#{version}/HapStore-v1.0.1-signed.hap"
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

  ohos_app "HapStore-v1.0.1-signed.hap"
end
