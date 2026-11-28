cask "home-cloud-shield" do
  version "0.1.4"
  sha256 arm64_linux: "360594081518823a409768c8dbc721ebf30a083d374898e1b829bc33c5bbaced"

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
