#!/bin/bash
set -e

npm run build

cd dist
git init
git add -A
git commit -m "deploy"
git push -f https://github.com/Roman1462/RTmoireDist.git master:gh-pages

cd -

rm -rf dist
