cask "s1-orange" do
  version "1.5.1"
  sha256 arm64_linux: "ad18e2b2ac8ad7e7f4e2cd8dbe63876b6b6d0619b3c5467611e7efa9f259dd7b"

  url "https://github.com/wly5556/S1-Orange/releases/download/v#{version}/S1-Orange-unsigned.1.5.1.hap"
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

  ohos_app "S1-Orange-unsigned.1.5.1.hap"
end
