cask "usbarc" do
  version "1.0.1"
  sha256 arm64_linux: "ced509bf22d7c4c8a5c9f06d0bf4ff3001fca6687b74ee9b746d86ae27697944"

  url "https://github.com/RockyMtnWolf/USBArc/releases/download/v#{version}/USBArc-1.0.1-api26-release-unsigned.hap"
  name "USBArc"
  desc "鸿蒙电脑 USB/IP 服务端，支持共享 USB 设备"
  homepage "https://github.com/RockyMtnWolf/USBArc"

  livecheck do
    url "https://github.com/RockyMtnWolf/USBArc"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "USBArc-1.0.1-api26-release-unsigned.hap"
end
