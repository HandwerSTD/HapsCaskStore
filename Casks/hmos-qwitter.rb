cask "hmos-qwitter" do
  version "0.4.84"
  sha256 arm64_linux: "0df66ddcaef44ecc295b2c83983d8f3ee326951e5bf11fdd4c9363e714d67e1e"

  url "https://github.com/llnode/hmos-qwitter/releases/download/v#{version}/Qwitter-0.4.84-unsigned.hap"
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

  ohos_app "Qwitter-0.4.84-unsigned.hap"
end
