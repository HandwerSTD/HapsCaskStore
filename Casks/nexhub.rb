cask "nexhub" do
  version "3.5.0"
  sha256 arm64_linux: "78fdca79831673e9db64925d05bb1beb0b5fdd719456dd7539ce440e512ddb4b"

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
