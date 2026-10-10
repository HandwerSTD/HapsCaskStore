cask "homl" do
  version "1.1.0"
  sha256 arm64_linux: "b961bf26ddf5ecb58c2ab2125763070fbc23ebb554a067a7823eeee504fedaf6"

  url "https://github.com/xiaobaigroup/HOML/releases/download/#{version}/entry-default-signed.hap"
  name "HOML启动器"
  desc "首个鸿蒙原生MCJava版HOML启动器"
  homepage "https://github.com/xiaobaigroup/HOML"

  livecheck do
    url "https://github.com/xiaobaigroup/HOML"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-signed.hap"
end
