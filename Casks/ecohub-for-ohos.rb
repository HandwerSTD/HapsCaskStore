cask "ecohub-for-ohos" do
  version "1.4.1"
  sha256 arm64_linux: "d33260f4e44a960087b281beee4c2b404556ae87b97334f6e966baf4b6de8393"

  url "https://github.com/fe-spark/EcoHub-for-OHOS/releases/download/v#{version}/EcoHub-1.4.1-b98af4a-unsigned.hap"
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

  ohos_app "EcoHub-1.4.1-b98af4a-unsigned.hap"
end
