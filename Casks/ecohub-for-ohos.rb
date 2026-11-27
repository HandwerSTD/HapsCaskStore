cask "ecohub-for-ohos" do
  version "1.4.8"
  sha256 arm64_linux: "6188357d90e42cf2aa8606f66913a3c6826fd51dca224f1e18278ea79a0cf76c"

  url "https://github.com/fe-spark/EcoHub-for-OHOS/releases/download/v#{version}/EcoHub-1.4.8-be07bbd-unsigned.hap"
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

  ohos_app "EcoHub-1.4.8-be07bbd-unsigned.hap"
end
