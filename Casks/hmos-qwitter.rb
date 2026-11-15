cask "hmos-qwitter" do
  version "0.4.78"
  sha256 arm64_linux: "23acea09bc396c780f0547382f4fdce5f33c0ae2d495530c3ce80b8e945c35b6"

  url "https://github.com/llnode/hmos-qwitter/releases/download/v#{version}/Qwitter-0.4.78-unsigned.hap"
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

  ohos_app "Qwitter-0.4.78-unsigned.hap"
end
