cask "ecohub-for-ohos" do
  version "1.4.4"
  sha256 arm64_linux: "797193106d464e875b6870c3e90a0bb2752a8368cdc4593bc9ac9f4f14bf33bf"

  url "https://github.com/fe-spark/EcoHub-for-OHOS/releases/download/v#{version}/EcoHub-1.4.4-6e57612-unsigned.hap"
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

  ohos_app "EcoHub-1.4.4-6e57612-unsigned.hap"
end
