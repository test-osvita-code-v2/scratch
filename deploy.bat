@echo off

git checkout dev
git add .
git commit -m "deploy"
git push origin dev

npm run build

move "dist\*" "build\"

cd build

git checkout main
git add .
git commit -m "deploy"
git push origin main
