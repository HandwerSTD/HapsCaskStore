#!/bin/sh
# 一键安装：确保 brew 有 cask 能力，然后把本仓库加成 tap 并建立信任。
#
#   wget -O - "https://raw.githubusercontent.com/HandwerSTD/HapsCaskStore/main/install.sh" | sh
#
# 通过管道运行时标准输入被脚本自己占用，脚本因此不从标准输入读任何东西。
# 检测到没有 cask 能力时，转而执行 HarmonyBrewCasks 的一键命令，那条命令自己再起一条管道，
# 与这里读不读标准输入无关。
#
# 环境变量：
#   HOMEBREW_PREFIX        安装前缀，默认 ${HOME}/.harmonybrew
#   HOMEBREW_REPOSITORY    Homebrew 检出目录，默认 ${HOME}/.harmonybrew/Homebrew
#   HOMEBREW_TAP_BRANCH    本仓库检出时跟踪的分支，默认 main

set -eu

PREFIX="${HOMEBREW_PREFIX:-${HOME}/.harmonybrew}"
REPOSITORY="${HOMEBREW_REPOSITORY:-${HOME}/.harmonybrew/Homebrew}"
BRANCH="${HOMEBREW_TAP_BRANCH:-main}"

TAP="HandwerSTD/haps-cask-store"
TAP_URL="https://github.com/HandwerSTD/HapsCaskStore.git"

# 没有 cask 能力时的补丁来源，patch 0005 引入的 ohos_app stanza 是本仓库 cask 的前提。
CASK_PATCHES="https://gitcode.com/api/v5/repos/handwer/HarmonyBrewCasks/raw/install.sh?ref=main"

# brew tap 落到 Library/Taps/<user>/homebrew-<repo>，全小写，与 tap 时写的大小写无关。
tap_dir() {
  user="$(printf '%s' "${TAP}" | cut -d/ -f1 | tr 'A-Z' 'a-z')"
  repo="$(printf '%s' "${TAP}" | cut -d/ -f2 | tr 'A-Z' 'a-z')"
  printf '%s/Library/Taps/%s/homebrew-%s' "${REPOSITORY}" "${user}" "${repo}"
}

brew_bin() {
  printf '%s/bin/brew' "${PREFIX}"
}

# cask 能力由补丁带来的 ohos_app stanza 决定，这个文件存在才说明补丁已经落地。
has_cask_support() {
  [ -f "${REPOSITORY}/Library/Homebrew/cask/artifact/ohos_app.rb" ]
}

printf '== 定位 Harmonybrew ==\n'
BREW="$(brew_bin)"
if [ ! -x "${BREW}" ]
then
  printf '找不到 %s\n' "${BREW}" >&2
  printf '请先安装 Harmonybrew，再跑这个脚本。\n' >&2
  exit 1
fi
if [ ! -d "${REPOSITORY}/.git" ]
then
  printf '找不到 git 检出目录 %s\n' "${REPOSITORY}" >&2
  printf '用 HOMEBREW_REPOSITORY 指定，或确认 Harmonybrew 已正常安装。\n' >&2
  exit 1
fi
printf 'brew        %s\n' "${BREW}"
printf '检出目录    %s\n' "${REPOSITORY}"

printf '\n== 检测 cask 能力 ==\n'
if has_cask_support
then
  printf '已有 ohos_app stanza，cask 能力就位。\n'
else
  printf '没有 ohos_app stanza，brew 目前装不了 cask。\n'
  printf '转而执行 HarmonyBrewCasks 的一键安装：\n\n'
  # 这里是新起的一条管道，标准输入与本脚本无关；额外从 /dev/null 取以免继承外层管道。
  sh -c 'wget -O - "$1" | sh' sh "${CASK_PATCHES}" < /dev/null
  if ! has_cask_support
  then
    printf '\n补丁安装后仍找不到 ohos_app stanza，停止。\n' >&2
    printf '可以手动执行：\n  wget -O - "%s" | sh\n' "${CASK_PATCHES}" >&2
    exit 1
  fi
  printf '\n补丁已应用，cask 能力就位。\n'
fi

TAP_PATH="$(tap_dir)"
printf '\n== 添加 tap ==\n'
if [ -d "${TAP_PATH}/.git" ]
then
  printf '已存在，git pull 更新到最新。\n'
  git -C "${TAP_PATH}" pull --ff-only origin "${BRANCH}"
else
  HOMEBREW_PREFIX="${PREFIX}" HOMEBREW_REPOSITORY="${REPOSITORY}" \
    "${BREW}" tap "${TAP}" "${TAP_URL}"
fi

printf '\n== 建立信任 ==\n'
# 非官方 tap 默认不被信任，不信任的话 brew casks 与 brew search --cask 都跳过本仓库。
HOMEBREW_PREFIX="${PREFIX}" HOMEBREW_REPOSITORY="${REPOSITORY}" \
  "${BREW}" trust --tap "${TAP}"

printf '\n== 当前收录 ==\n'
HOMEBREW_PREFIX="${PREFIX}" HOMEBREW_REPOSITORY="${REPOSITORY}" \
  "${BREW}" casks | grep "^$(printf '%s' "${TAP}" | tr 'A-Z' 'a-z')/" || \
  printf '没有列出 cask，检查上面的输出。\n'

cat <<EOS

== 安装完成 ==

按名字安装应用：

  brew install --cask lnga-harmony

一次装全部：

  brew install --cask \$(brew casks | grep '^$(printf '%s' "${TAP}" | tr 'A-Z' 'a-z')/')

卸载：

  brew uninstall --cask lnga-harmony

本仓库的 tap 名字是 ${TAP}，检出目录是 ${TAP_PATH}。
所有命令里的 tap 名字都要跟 brew tap 时用的这个一致。
应用包会复制到 ~/Download，签名与安装交给设备上的安装工具。
EOS