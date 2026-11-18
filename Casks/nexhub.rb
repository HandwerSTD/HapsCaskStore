cask "nexhub" do
  version "4.0.0"
  sha256 arm64_linux: "1d2f984a0d9312eae23afda88cb5777d4896d345a0c3b9e8e01b42ebbae6195f"

  url "https://github.com/nexhub-app/NexHub/releases/download/v#{version}-beta.1/NexHub-ohos-arm64-unsigned.hap"
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
