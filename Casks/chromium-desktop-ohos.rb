cask "chromium-desktop-ohos" do
  version "1.0.3"
  sha256 arm64_linux: "6261c0565d4702c672d66f31ce68c321135fdc1ef54bf443c7c45d0d27b484a0"

  url "https://github.com/nimmi114514/chromium-desktop-ohos/releases/download/v#{version}/chromium-default-unsigned.hap"
  name "Chromium Desktop"
  desc "鸿蒙平板与电脑上的 Chromium 桌面浏览器"
  homepage "https://github.com/nimmi114514/chromium-desktop-ohos"

  livecheck do
    url "https://github.com/nimmi114514/chromium-desktop-ohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "chromium-default-unsigned.hap"
end
