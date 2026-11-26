cask "hmos-qwitter" do
  version "0.4.102"
  sha256 arm64_linux: "22108307a127e45c70364730d303b49c83b9fa5a11b1e2b9a25e4baf645e93d4"

  url "https://github.com/llnode/hmos-qwitter/releases/download/v#{version}/Qwitter-0.4.102-unsigned.hap"
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

  ohos_app "Qwitter-0.4.102-unsigned.hap"
end
