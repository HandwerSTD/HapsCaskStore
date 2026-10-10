cask "weibopura" do
  version "1.0.0"
  sha256 arm64_linux: "bd5a698fb2ff942bd3d24064482ba92837e7a205fd7795d3e69a4a39208b1899"

  url "https://github.com/haohaoai0/WeiboPura/releases/download/v#{version}-weibopura/entry-default-unsigned.hap"
  name "微博Pura"
  desc "面向 HarmonyOS 的原生微博浏览客户端"
  homepage "https://github.com/haohaoai0/WeiboPura"

  livecheck do
    url "https://github.com/haohaoai0/WeiboPura"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
