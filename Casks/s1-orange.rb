cask "s1-orange" do
  version "1.4.6"
  sha256 arm64_linux: "d44eb8a3dd6773cdde7c6751458d42d87d4d7886db8106f9a43961918d822b04"

  url "https://github.com/wly5556/S1-Orange/releases/download/v#{version}/S1-Orange-unsigned.1.4.6.hap"
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

  ohos_app "S1-Orange-unsigned.1.4.6.hap"
end
