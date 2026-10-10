cask "home-cloud-shield" do
  version "0.1.0"
  sha256 arm64_linux: "89cb8d0f353c17854484b07b3cc9e26ba68302f20e0c5bde1207037f244f8bbd"

  url "https://github.com/Tlntin/home-cloud-shield/releases/download/v#{version}/entry-default-unsigned.hap"
  name "栖云盾"
  desc "鸿蒙本地DNS过滤应用，支持AdGuard风格规则拦截广告"
  homepage "https://github.com/Tlntin/home-cloud-shield"

  livecheck do
    url "https://github.com/Tlntin/home-cloud-shield"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
