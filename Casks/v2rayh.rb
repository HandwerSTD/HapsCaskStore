cask "v2rayh" do
  version "0.3.2"
  sha256 arm64_linux: "67203036058ccac333d40f4b767a3783f1afb5285f86b6a70f4b5c63d35a0b91"

  url "https://github.com/JuckyLee668/v2rayH/releases/download/v#{version}/v2rayH-0.3.2-unsigned.hap"
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

  ohos_app "v2rayH-0.3.2-unsigned.hap"
end
