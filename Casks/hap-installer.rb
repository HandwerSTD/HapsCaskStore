cask "hap-installer" do
  version "1.0.0"
  sha256 arm64_linux: "bd20b09ae6cc503e2953e1e2e6ccc9e60f8de1d7b4e863ef78cb9820973c3dd5"

  url "https://github.com/LMV475/hap-installer/releases/download/v#{version}/HapInstaller-1.0.0-unsigned.hap"
  name "HapInstaller"
  desc "鸿蒙端侧签名与安装工具，无需 PC 即可侧载 HAP"
  homepage "https://github.com/LMV475/hap-installer"

  livecheck do
    url "https://github.com/LMV475/hap-installer"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "HapInstaller-1.0.0-unsigned.hap"
end
