cask "chromium-desktop-ohos" do
  version "1.0.4"
  sha256 arm64_linux: "6297f98018ff6bae170f459363f60b25d33cfa1eb387f1bbc5629ee2f0c1109b"

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
