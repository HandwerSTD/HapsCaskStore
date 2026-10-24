cask "aira-browser" do
  version "3.8.4"
  sha256 arm64_linux: "89a8cbf2feaea57734251f4ddb7ec21326d3b0de9dc382efc58f1189b7c15f95"

  url "https://github.com/mason173/aira-browser/releases/download/v#{version}/Aira-community-v3.8.4-1000555-default-unsigned.hap"
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

  ohos_app "Aira-community-v3.8.4-1000555-default-unsigned.hap"
end
