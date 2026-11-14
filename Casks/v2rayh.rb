cask "v2rayh" do
  version "0.3.4"
  sha256 arm64_linux: "e1ffcf57bf6eb688606e99bfb83808b4aac2975f414440ab1f89f04c9f4c8442"

  url "https://github.com/JuckyLee668/v2rayH/releases/download/v#{version}/v2rayH-0.3.4-unsigned.hap"
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

  ohos_app "v2rayH-0.3.4-unsigned.hap"
end
