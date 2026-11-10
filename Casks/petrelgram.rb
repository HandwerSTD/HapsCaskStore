cask "petrelgram" do
  version "1.5.9"
  sha256 arm64_linux: "6f34724181feb462892bab4bfab63603a1a988553b9d8a0a2561f36214e2e40e"

  url "https://github.com/miramira8295/Petrelgram/releases/download/v#{version}/Petrelgram-1.5.9-unsigned.app.hap"
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

  ohos_app "Petrelgram-1.5.9-unsigned.app.hap"
end
