cask "aira-browser" do
  version "3.7.4"
  sha256 arm64_linux: "0fe301e86261daacc473db9f9d1cd18861d96d8f7a80df0a3c9313cc526a2732"

  url "https://github.com/mason173/aira-browser/releases/download/v#{version}/Aira-community-v3.7.4-1000531-default-unsigned.hap"
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

  ohos_app "Aira-community-v3.7.4-1000531-default-unsigned.hap"
end
