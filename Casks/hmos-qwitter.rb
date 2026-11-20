cask "hmos-qwitter" do
  version "0.4.101"
  sha256 arm64_linux: "e1704d1e14d28d4b493aa2c0b3eee3b5510c7e9ed1d346651f459a8f91d9cb36"

  url "https://github.com/llnode/hmos-qwitter/releases/download/v#{version}/Qwitter-0.4.101-unsigned.hap"
  name "Qwitter"
  desc "鸿蒙版 X 客户端，支持时间线、通知与聊天"
  homepage "https://github.com/llnode/hmos-qwitter"

  livecheck do
    url "https://github.com/llnode/hmos-qwitter"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Qwitter-0.4.101-unsigned.hap"
end
