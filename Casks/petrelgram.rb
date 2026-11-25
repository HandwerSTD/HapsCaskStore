cask "petrelgram" do
  version "1.6.2"
  sha256 arm64_linux: "bbc56e6c9452d2751e66e1cb146ff896baa52c8e40a8d2f037bc319d9170bd38"

  url "https://github.com/miramira8295/Petrelgram/releases/download/v#{version}/Petrelgram-1.6.2-unsigned.app.hap"
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

  ohos_app "Petrelgram-1.6.2-unsigned.app.hap"
end
