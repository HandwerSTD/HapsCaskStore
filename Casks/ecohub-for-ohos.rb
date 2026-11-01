cask "ecohub-for-ohos" do
  version "1.4.2"
  sha256 arm64_linux: "ec32c4feaaee7513c4f6a9f521e28ef909e7a4e4c4d03e80288c088ad019caa4"

  url "https://github.com/fe-spark/EcoHub-for-OHOS/releases/download/v#{version}/EcoHub-1.4.2-778efea-unsigned.hap"
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

  ohos_app "EcoHub-1.4.2-778efea-unsigned.hap"
end
