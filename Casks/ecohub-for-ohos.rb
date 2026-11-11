cask "ecohub-for-ohos" do
  version "1.4.7"
  sha256 arm64_linux: "feb825f9c3eade5b626bae9a3afdb5ea278730ce4443430c08edc2a664513a9a"

  url "https://github.com/fe-spark/EcoHub-for-OHOS/releases/download/v#{version}/EcoHub-1.4.7-c6cb4dd-unsigned.hap"
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

  ohos_app "EcoHub-1.4.7-c6cb4dd-unsigned.hap"
end
