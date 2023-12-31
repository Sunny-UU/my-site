#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn run docs:build

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io/<REPO>  本地分支：远程分支
git push -f https://github.com/Sunny-UU/my-site.git main:gh-pages

cd -
