cask "calculatorx" do
  version "1.6.5"
  sha256 arm64_linux: "50082d2c97d16ae52de1e06269db4a30c0eea77b795b55fa48735ca1e947d25a"

  url "https://github.com/StartYR/CalculatorX/releases/download/v#{version}/CalcX-1.6.5-release-signed.hap"
  name "CalculatorX"
  desc "一款支持符号计算、微积分、矩阵、方程求解与函数图像的原生科学计算器"
  homepage "https://github.com/StartYR/CalculatorX"

  livecheck do
    url "https://github.com/StartYR/CalculatorX"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "CalcX-1.6.5-release-signed.hap"
end
