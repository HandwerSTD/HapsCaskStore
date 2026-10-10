cask "hx360e" do
  version "1.0.2"
  sha256 arm64_linux: "3986ccbff114529d1b048af773f4e8fd992f21087528937fb7365c5b9772e3eb"

  url "https://github.com/1440196924/HX360E/releases/download/#{version}/HX360E-1.0.2-release-signed.hap"
  name "HX360E"
  desc "在鸿蒙上运行Xbox 360游戏的模拟器前端"
  homepage "https://github.com/1440196924/HX360E"

  livecheck do
    url "https://github.com/1440196924/HX360E"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "HX360E-1.0.2-release-signed.hap"
end
