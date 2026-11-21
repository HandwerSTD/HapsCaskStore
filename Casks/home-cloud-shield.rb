cask "home-cloud-shield" do
  version "0.1.2"
  sha256 arm64_linux: "9ccd8b69ec0b5e800e0198460cc2b1f9a78a227176f868606dc0d5eab7851a3d"

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
