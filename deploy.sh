#!/bin/bash
set -e
cd "$(dirname "$0")"
rsync -av --delete --exclude='.DS_Store' --chmod=Do+x,Fo+r ./site/ lxhalle:/u/halle/kurks/home_page/html-data/
echo "✅ Live: https://home.cit.tum.de/~kurks/"
