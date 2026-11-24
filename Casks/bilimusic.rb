cask "bilimusic" do
  version "1.4.0"
  sha256 arm64_linux: "42f5c698909288d58b44a40d7101d56970ffc02ea34eba2b69ce07e9c272183c"

  url "https://github.com/chai2shi-spec/BiliMusic/releases/download/v#{version}/bilimusic1.4.0.hap"
  name "BiliMusic"
  desc "鸿蒙 B 站第三方音乐播放器"
  homepage "https://github.com/chai2shi-spec/BiliMusic"

  livecheck do
    url "https://github.com/chai2shi-spec/BiliMusic"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "bilimusic1.4.0.hap"
end
