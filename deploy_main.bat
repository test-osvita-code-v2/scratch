@echo off

move "dist\*" "build\"

cd build

git checkout main
git add .
git commit -m "deploy"
git push origin main

pause
exit