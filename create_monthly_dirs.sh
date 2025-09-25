#!/bin/bash

year="2026"

for month in {1..12}; do
  month_padded=$(printf "%02d" $month)

  month_name=$(date -d "$year-$month-01" +"%b" 2>/dev/null)
  
  if [ -z "$month_name" ]; then
    dir_name="${year}/${month_padded}"
  else
    dir_name="${year}/${month_padded}-${month_name}"
  fi

  echo "ディレクトリを作成中: $dir_name"
  mkdir -p "$dir_name"

  for week in {1..4}; do
    week_dir_name="Week${week}"

    mkdir -p "$dir_name/$week_dir_name"
  done

echo "すべてのディレクトリを作成したと思います。たぶん大丈夫だと思います。"
