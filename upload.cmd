@echo off
chcp 65001

git add .
git commit -m "update"
git pull
git gc --prune=now --aggressive

git push