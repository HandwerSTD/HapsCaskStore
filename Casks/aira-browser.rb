cask "aira-browser" do
  version "3.7.1"
  sha256 arm64_linux: "64559a3693f4bafec87f1465cb1fc0fb46cc19b20714659585b32ed5db95ad0c"

  url "https://github.com/mason173/aira-browser/releases/download/v#{version}/Aira-community-v3.7.1-1000508-default-unsigned.hap"
  name "Aira"
  desc "开源的鸿蒙 NEXT 浏览器"
  homepage "https://github.com/mason173/aira-browser"

  livecheck do
    url "https://github.com/mason173/aira-browser"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Aira-community-v3.7.1-1000508-default-unsigned.hap"
end
