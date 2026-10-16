cask "petrelgram" do
  version "1.5.4"
  sha256 arm64_linux: "a0af15169e284ff60c8351bd6b98dc452145b540a395b82a4dc2d3520a1245fe"

  url "https://github.com/miramira8295/Petrelgram/releases/download/v#{version}/Petrelgram-1.5.4-unsigned.app.hap"
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

  ohos_app "Petrelgram-1.5.4-unsigned.app.hap"
end
