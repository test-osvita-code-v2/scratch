@echo off

git checkout dev
git add .
git commit -m "deploy"
git push origin dev

del /q "build\*"
FOR /D %%p IN ("build\*.*") DO rmdir "%%p" /s /q
npm run build

exit
