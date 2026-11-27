cask "nexhub" do
  version "4.0.0"
  sha256 arm64_linux: "deb7356ab2231ce9306ff32cdb9aaeca57c5758c91413a622c4330a6e83e6c98"

  url "https://github.com/nexhub-app/NexHub/releases/download/v#{version}-beta.3/NexHub-ohos-arm64-unsigned.hap"
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
