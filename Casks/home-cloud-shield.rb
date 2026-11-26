cask "home-cloud-shield" do
  version "0.1.3"
  sha256 arm64_linux: "d34cc448c586d5bc5ebc0a8bd4573e681efba430763424b0a75bbd2b33e1b1a9"

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
