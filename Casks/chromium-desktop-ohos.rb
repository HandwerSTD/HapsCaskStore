cask "chromium-desktop-ohos" do
  version "1.0.5"
  sha256 arm64_linux: "792f2e688511dc217c9b4c7cf54e854cd4ad9c1f9f226d672a10950870624975"

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
