cask "petrelgram" do
  version "1.6.3"
  sha256 arm64_linux: "97f08c5fe3df140f65fbb1f4568102c0a2806571d1b9466f321b8717cf67f8db"

  url "https://github.com/miramira8295/Petrelgram/releases/download/v#{version}/Petrelgram-1.6.3-unsigned.app.hap"
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

  ohos_app "Petrelgram-1.6.3-unsigned.app.hap"
end
