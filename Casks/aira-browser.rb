cask "aira-browser" do
  version "3.9.1"
  sha256 arm64_linux: "2d7668f8b4549bbbe6b2d75bb5a64fb7fc0e5d7663b36dc5181a61bfa7582974"

  url "https://github.com/mason173/aira-browser/releases/download/v#{version}/Aira-community-v3.9.1-1000562-default-unsigned.hap"
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

  ohos_app "Aira-community-v3.9.1-1000562-default-unsigned.hap"
end
