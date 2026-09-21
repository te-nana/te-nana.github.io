#!/bin/zsh
SRC="/Users/nana/Library/Mobile Documents/com~apple~CloudDocs/Obsidian/最初の保管庫/03_garden"
cd ~/te-nana.github.io || exit 1
rsync -a --delete --exclude ".obsidian" --exclude ".DS_Store" "$SRC/" content/
npx quartz sync --message "update garden"
