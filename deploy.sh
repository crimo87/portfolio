#!/bin/bash
# 포트폴리오 수정 후 이 스크립트만 실행하면 GitHub Pages에 반영됩니다.
set -e
SRC="/Users/jogyeongmo/Downloads/portfolio-project/조경모_포트폴리오.html"
SITE="$(cd "$(dirname "$0")" && pwd)"
cp "$SRC" "$SITE/index.html"
cd "$SITE"
git add index.html
git commit -m "Update portfolio" || { echo "변경 사항 없음"; exit 0; }
git push
echo "배포 완료: https://crimo87.github.io/portfolio/"
