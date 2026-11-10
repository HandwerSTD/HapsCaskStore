cask "v2rayh" do
  version "0.3.3"
  sha256 arm64_linux: "c6580c86881a4fa7fb826ae84f7c3437cd1f71c6ff70ce26b091cbb8d7fffc11"

  url "https://github.com/JuckyLee668/v2rayH/releases/download/v#{version}/v2rayH-0.3.3-unsigned.hap"
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

  ohos_app "v2rayH-0.3.3-unsigned.hap"
end
