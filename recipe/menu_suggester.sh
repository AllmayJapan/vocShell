#!/bin/bash

recipe_file="$PWD/recipe_list.txt"

if [ ! -f "$recipe_file" ]; then
  echo "レシピファイル($recipe_file)が見つかりません"
  echo "このファイルに献立の候補を一行づつ書いてください。"
  exit 1
fi

total_lines=$(wc -l <"$recipe_file")

random_line=$(((RANDOM % total_lines) + 1))

suggestion=$(sed -n "${random_line}p" "${recipe_file}")

echo "========================="
echo "  今日のバァンゴハァン  "
echo "========================="
echo "  ✨ ${suggestion} ✨ "
echo "========================="
