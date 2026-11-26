cask "harmony-kslmkf-karing-hap" do
  version "1.11.1"
  sha256 arm64_linux: "d3aec231e96c5eef243fc57cd5bdbedde696bc1d2d3b11f6534d630c29521a85"

  url "https://github.com/ks-lm-kf/harmony-kslmkf-karing-hap/releases/download/v#{version}/karing-harmony-1.11.1.hap"
  name "Karing"
  desc "基于Karing/sing-box的鸿蒙代理工具，支持订阅与多协议"
  homepage "https://github.com/ks-lm-kf/harmony-kslmkf-karing-hap"

  livecheck do
    url "https://github.com/ks-lm-kf/harmony-kslmkf-karing-hap"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "karing-harmony-1.11.1.hap"
end
