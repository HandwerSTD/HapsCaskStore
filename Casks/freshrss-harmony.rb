cask "freshrss-harmony" do
  version "2.35"
  sha256 arm64_linux: "fc55940dd574fb4bc75851e4dffb635a655ffb3f82ecf5ac161c443b6c4ca23f"

  url "https://github.com/wtronfi/FreshRSS-Harmony/releases/download/#{version}/FreshRSS-2.35-2026110501-unsigned.hap"
  name "FreshRSS"
  desc "自托管 FreshRSS 鸿蒙客户端，支持离线阅读"
  homepage "https://github.com/wtronfi/FreshRSS-Harmony"

  livecheck do
    url "https://github.com/wtronfi/FreshRSS-Harmony"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "FreshRSS-2.35-2026110501-unsigned.hap"
end
