cask "petrelgram" do
  version "1.5.6"
  sha256 arm64_linux: "20a76e7c046bd21a0e944984d91037c6bb07fb54007d8b900d6298d6871045e5"

  url "https://github.com/miramira8295/Petrelgram/releases/download/v#{version}/Petrelgram-1.5.6-unsigned.app.hap"
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

  ohos_app "Petrelgram-1.5.6-unsigned.app.hap"
end
