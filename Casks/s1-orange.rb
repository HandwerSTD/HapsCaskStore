cask "s1-orange" do
  version "1.5.2"
  sha256 arm64_linux: "0a4500930a719dcddd4bc7da3ce782222ad18d33ed4ed9a11af6701222263a96"

  url "https://github.com/wly5556/S1-Orange/releases/download/v#{version}/S1-Orange-unsigned.1.5.2.hap"
  name "S1 Orange"
  desc "一款专为鸿蒙Next平台开发的 stage1st.com 论坛移动客户端"
  homepage "https://github.com/wly5556/S1-Orange"

  livecheck do
    url "https://github.com/wly5556/S1-Orange"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "S1-Orange-unsigned.1.5.2.hap"
end
