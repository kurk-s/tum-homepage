#!/bin/bash
set -e
cd "$(dirname "$0")"

if [ -n "$(git status --porcelain)" ]; then
  echo "❌ Uncommitted changes – commit first."
  exit 1
fi

rsync -av --delete --exclude='.DS_Store' --chmod=Do+x,Fo+r ./site/ lxhalle:/u/halle/kurks/home_page/html-data/
echo "✅ Live: https://home.cit.tum.de/~kurks/"
