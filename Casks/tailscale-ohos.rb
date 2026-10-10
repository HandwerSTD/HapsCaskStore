cask "tailscale-ohos" do
  version "0.3.19"
  sha256 arm64_linux: "c8c5c51817708f587e5be1a7ddb54b15b9dd396026e7a78e5ee77f4c85f96c73"

  url "https://github.com/flypigJ/Tailscale-OHOS/releases/download/v#{version}-release/Tailscale-OHOS-0.3.19-release-signed.hap"
  name "Tailscale"
  desc "一款零配置的组网工具，让你的设备安全地互联"
  homepage "https://github.com/flypigJ/Tailscale-OHOS"

  livecheck do
    url "https://github.com/flypigJ/Tailscale-OHOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Tailscale-OHOS-0.3.19-release-signed.hap"
end
