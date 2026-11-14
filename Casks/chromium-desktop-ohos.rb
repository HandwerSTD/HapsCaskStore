cask "chromium-desktop-ohos" do
  version "1.0.2"
  sha256 arm64_linux: "666d241a02c86d9610e8dae4c2fdcc7d153f71079473e4ec4c5d0a2adf51b5e9"

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
