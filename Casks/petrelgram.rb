cask "petrelgram" do
  version "1.5.2"
  sha256 arm64_linux: "c1d39ac6ab8933a4152ee1f30d045874b1537a51a685f5c3c5b8e72b42fed14e"

  url "https://github.com/miramira8295/Petrelgram/releases/download/v#{version}/Petrelgram-1.5.2-unsigned.hap"
  name "Petrelgram"
  desc "第三方✈鸿蒙版，基于 TDLib 的 Telegram 客户端，支持多账号与音视频通话"
  homepage "https://github.com/miramira8295/Petrelgram"

  livecheck do
    url "https://github.com/miramira8295/Petrelgram"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Petrelgram-1.5.2-unsigned.hap"
end
