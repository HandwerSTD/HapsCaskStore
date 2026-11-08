cask "chromium-desktop-ohos" do
  version "1.0.1"
  sha256 arm64_linux: "529eddf85f55c44958bde854a112024d70ad4fd1f0ed5db1a7dc61dc823a5c10"

  url "https://github.com/nimmi114514/chromium-desktop-ohos/releases/download/v#{version}/chromium-158.0.8116.0-ohos-api26-arm64-release-unsigned.hap"
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

  ohos_app "chromium-158.0.8116.0-ohos-api26-arm64-release-unsigned.hap"
end
