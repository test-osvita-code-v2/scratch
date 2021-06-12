@echo off

copy /y "dist\*" "build\"

cd build

git checkout main
git add .
git commit -m "deploy"
git push origin main

exit