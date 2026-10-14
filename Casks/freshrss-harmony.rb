cask "freshrss-harmony" do
  version "2.33"
  sha256 arm64_linux: "c8540ba5b79ff4fcc67b27d7afab2718ac88ee0bbe80d0a853515e9f6fca30ca"

  url "https://github.com/wtronfi/FreshRSS-Harmony/releases/download/#{version}/FreshRSS-2.33-2026101402-unsigned.hap"
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

  ohos_app "FreshRSS-2.33-2026101402-unsigned.hap"
end
