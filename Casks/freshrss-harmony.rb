cask "freshrss-harmony" do
  version "2.56"
  sha256 arm64_linux: "07b3f6a0068e8bc381c096f100f1168ebdf4063d3668a122881d3ea1e23e4b63"

  url "https://github.com/wtronfi/FreshRSS-Harmony/releases/download/#{version}/FreshRSS-2.56-2026111537-unsigned.hap"
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

  ohos_app "FreshRSS-2.56-2026111537-unsigned.hap"
end
