cask "petrelgram" do
  version "1.6.0"
  sha256 arm64_linux: "066bfb44c07cb8c2df16e4630bca1da1418baedea877c66ee730030381cdcd92"

  url "https://github.com/miramira8295/Petrelgram/releases/download/v#{version}/Petrelgram-1.6.0-unsigned.app.hap"
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

  ohos_app "Petrelgram-1.6.0-unsigned.app.hap"
end
