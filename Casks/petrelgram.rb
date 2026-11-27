cask "petrelgram" do
  version "1.6.4"
  sha256 arm64_linux: "5be74d3c08dd8f9a164c9f67ad61919fa4f7ae1185c7570b56c2e7839cf81e8b"

  url "https://github.com/miramira8295/Petrelgram/releases/download/v#{version}/Petrelgram-1.6.4-unsigned.app.hap"
  name "Petrelgram"
  desc "第三方鸿蒙版，基于 TDLib 的 Telegram 客户端，支持多账号与音视频通话"
  homepage "https://github.com/miramira8295/Petrelgram"

  livecheck do
    url "https://github.com/miramira8295/Petrelgram"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Petrelgram-1.6.4-unsigned.app.hap"
end
