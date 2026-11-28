cask "nexhub" do
  version "4.0.0"
  sha256 arm64_linux: "e94705cf9ff8b1f31bea90f105c8c9e053585c9fe5ce34cd8a0779347098345d"

  url "https://github.com/nexhub-app/NexHub/releases/download/v#{version}-beta.4/NexHub-ohos-arm64-unsigned.hap"
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
