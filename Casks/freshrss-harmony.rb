cask "freshrss-harmony" do
  version "2.34"
  sha256 arm64_linux: "8749bad1e6f65157114d37f59355a23236a2a60e5e27fb36d5ffcac1a4ae2ec3"

  url "https://github.com/wtronfi/FreshRSS-Harmony/releases/download/#{version}/FreshRSS-2.34-2026101501-unsigned.hap"
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

  ohos_app "FreshRSS-2.34-2026101501-unsigned.hap"
end
