#!/usr/bin/env bash
set -euo pipefail

# 目标目录
RIME_TARGET="$HOME/.local/share/fcitx5/rime"
# 脚本自身完整路径
SCRIPT_SELF=$(realpath "$0")
# 脚本所在目录
SCRIPT_DIR=$(dirname "$SCRIPT_SELF")

# 创建目标目录（不存在则新建）
mkdir -p "$RIME_TARGET"

# 遍历脚本目录下所有文件/文件夹
for item in "$SCRIPT_DIR"/*; do
  # 跳过自身脚本文件
  if [[ $(realpath "$item") == "$SCRIPT_SELF" ]]; then
    continue
  fi

  # 获取文件名
  item_name=$(basename "$item")
  link_path="$RIME_TARGET/$item_name"

  # 如果链接/文件已存在，先删除避免冲突
  if [[ -e "$link_path" || -L "$link_path" ]]; then
    rm -rf "$link_path"
  fi

  # 创建软链接
  ln -s "$item" "$link_path"
  echo "Linked: $item -> $link_path"
done

echo "所有文件链接完成，已排除脚本自身"
