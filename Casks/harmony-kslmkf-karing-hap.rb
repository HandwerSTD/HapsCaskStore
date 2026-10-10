cask "harmony-kslmkf-karing-hap" do
  version "1.11.0"
  sha256 arm64_linux: "8fcd80e44114421ca57808add801575cbe3fd9b964c230b36c979cfd07139eed"

  url "https://github.com/ks-lm-kf/harmony-kslmkf-karing-hap/releases/download/v#{version}/karing-harmony-1.11.0.hap"
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

  ohos_app "karing-harmony-1.11.0.hap"
end
