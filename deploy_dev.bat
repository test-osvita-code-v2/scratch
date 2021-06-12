@echo off

git checkout dev
git add .
git commit -m "deploy"
git push origin dev

move "build\*" "dist\"
npm run build

pause
exit
