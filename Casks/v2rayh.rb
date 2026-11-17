cask "v2rayh" do
  version "0.3.5"
  sha256 arm64_linux: "00a50caca4df122bb3f2f2a36c8a4fa68555fff89395dcb7f229c666cb6b00ad"

  url "https://github.com/JuckyLee668/v2rayH/releases/download/v#{version}/v2rayH-0.3.5-unsigned.hap"
  name "v2rayH"
  desc "鸿蒙原生代理客户端，支持 Xray 与 Mihomo 内核"
  homepage "https://github.com/JuckyLee668/v2rayH"

  livecheck do
    url "https://github.com/JuckyLee668/v2rayH"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "v2rayH-0.3.5-unsigned.hap"
end
