cask "homowarden" do
  version "2.0.3"
  sha256 arm64_linux: "bd2a349dd5544b101d6690d95c754b3672d51a25a6c570e147cdca047db73f6e"

  url "https://github.com/DreamistW/Homowarden/releases/download/oh-v#{version}/Homowarden-OpenHarmony-2.0.3-e197597-release-unsigned.hap"
  name "Homowarden"
  desc "鸿蒙版Bitwarden密码管理器，支持自托管服务器"
  homepage "https://github.com/DreamistW/Homowarden"

  livecheck do
    url "https://github.com/DreamistW/Homowarden"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Homowarden-OpenHarmony-2.0.3-e197597-release-unsigned.hap"
end
