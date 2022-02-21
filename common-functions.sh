#!/usr/bin/env bash
#
# 共通関数
#
set -eu;

# ヘルスチェック
# 上限に達するまで10秒ごとに与えられたURLにリクエストを送信してヘルスチェックを行なう。
# 2xx系のステータスコード取得できれば０、できなければ1を返す。
# $1 対象のURL
# $2 ヘルスチェックの上限回数
function health_check() {
  limit="$2";
  cnt=0;
  until curl -f "$1" > /dev/null 2>&1; do
    if [ "${cnt}" = "${limit}" ]; then
      return 1;
    else
      cnt=$((cnt+1))
    fi
    sleep 10;
  done;
  return 0;
}
