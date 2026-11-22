cask "chromium-desktop-ohos" do
  version "1.0.6"
  sha256 arm64_linux: "4b58053b8dec06311e7ff757d05b5d9916e138280f3edc542b4d293e4cf9c3b2"

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
