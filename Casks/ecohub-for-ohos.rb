cask "ecohub-for-ohos" do
  version "1.1.2"
  sha256 arm64_linux: "e64393cfb76167ce47e5a5b1f1b6d4a62db5a30c93276dcc893580fbeeb30aed"

  url "https://github.com/fe-spark/EcoHub-for-OHOS/releases/download/v#{version}-beta.1/EcoHub-1.1.2-beta.1-5d11d29-signed.hap"
  name "EcoHub"
  desc "自托管影视聚合服务 EcoHub 的鸿蒙客户端，连接自建服务观看影视"
  homepage "https://github.com/fe-spark/EcoHub-for-OHOS"

  livecheck do
    url "https://github.com/fe-spark/EcoHub-for-OHOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "EcoHub-1.1.2-beta.1-5d11d29-signed.hap"
end
