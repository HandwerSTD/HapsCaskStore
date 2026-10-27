cask "nexhub" do
  version "3.3.0"
  sha256 arm64_linux: "a88b25606660110061702e87f30aa81deccce22aafd0f77d21f02852cd9fdcf1"

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
