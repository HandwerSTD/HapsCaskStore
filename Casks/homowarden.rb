cask "homowarden" do
  version "2.0.2"
  sha256 arm64_linux: "19c7dcde518279668e8613571d70a048169ac689023cd22669168a19d2d8a8da"

  url "https://github.com/DreamistW/Homowarden/releases/download/v#{version}/entry-default-unsigned.hap"
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

  ohos_app "entry-default-unsigned.hap"
end
