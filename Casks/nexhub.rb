cask "nexhub" do
  version "3.6.0"
  sha256 arm64_linux: "10bcaecbb17492c523ba2b64f19232ba34cfe24c6a09d1c04c933dcb54ae6955"

  url "https://github.com/nexhub-app/NexHub/releases/download/v#{version}/NexHub-ohos-arm64-unsigned.hap"
  name "NexHub"
  desc "聚合动漫、漫画、小说与影视的跨平台客户端"
  homepage "https://github.com/nexhub-app/NexHub"

  livecheck do
    url "https://github.com/nexhub-app/NexHub"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "NexHub-ohos-arm64-unsigned.hap"
end
