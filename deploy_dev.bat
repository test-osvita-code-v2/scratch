@echo off

git checkout dev
git add .
git commit -m "deploy"
git push origin dev

del /q "scratch\*"
FOR /D %%p IN ("scratch\*.*") DO rmdir "%%p" /s /q

npm run build

exit
