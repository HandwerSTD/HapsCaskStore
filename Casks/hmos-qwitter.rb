cask "hmos-qwitter" do
  version "0.4.93"
  sha256 arm64_linux: "8f40409a5647768209f13fa6fa1b07b71372e54af9164464f1bf6ed0db49527d"

  url "https://github.com/llnode/hmos-qwitter/releases/download/v#{version}/Qwitter-0.4.93-unsigned.hap"
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

  ohos_app "Qwitter-0.4.93-unsigned.hap"
end
