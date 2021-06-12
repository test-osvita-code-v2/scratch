@echo off

xcopy "dist\*" "build\" /f /i /y /s

cd build

git checkout main
git add .
git commit -m "deploy"
git push origin main

exit