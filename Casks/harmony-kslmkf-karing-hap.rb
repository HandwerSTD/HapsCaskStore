cask "harmony-kslmkf-karing-hap" do
  version "1.0.9"
  sha256 arm64_linux: "3d1d3b1ce044cc784fd357c368d3fac11d7f6e902764e9768268cee100c95517"

  url "https://github.com/ks-lm-kf/harmony-kslmkf-karing-hap/releases/download/v#{version}-beta/karing-harmony-1.0.9-beta.hap"
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

  ohos_app "karing-harmony-1.0.9-beta.hap"
end
