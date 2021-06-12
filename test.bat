del /q "build\*
FOR /D %%p IN ("build\*.*") DO rmdir "%%p" /s /q