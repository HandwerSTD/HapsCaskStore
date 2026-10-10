cask "catpawopen" do
  version "2.0.3"
  sha256 arm64_linux: "48e09a0cfe1c5ff02d23dedd6282bbd57113a7e2dddef8e14b9477bdd082c913"

  url "https://github.com/CatPawApp/CatPawOpen/releases/download/beta/ohos_open_#{version}_beta4.hap"
  name "影视猫"
  desc "类似TVBox的聚合影视播放工具，可配置接口拉取视频源"
  homepage "https://github.com/CatPawApp/CatPawOpen"

  livecheck do
    url "https://github.com/CatPawApp/CatPawOpen"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "ohos_open_2.0.3_beta4.hap"
end
