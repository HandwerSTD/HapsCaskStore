cask "aira-browser" do
  version "3.9.7"
  sha256 arm64_linux: "2916a3778f33d0814a1311433158eec1c9b7e913506e9dc9616b798c2bc65797"

  url "https://github.com/mason173/aira-browser/releases/download/v#{version}/Aira-community-v3.9.7-1000585-default-unsigned.hap"
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

  ohos_app "Aira-community-v3.9.7-1000585-default-unsigned.hap"
end
