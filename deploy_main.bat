@echo off

xcopy "dist\*" "scratch\" /f /i /y /s

cd scratch

git checkout main
git add .
git commit -m "deploy"
git push origin main

exit