@echo off

git status

del http_cache.sqlite
pipenv run render.py
copy /Y constants.js ..\muledump\lib\
copy /Y sheets.js ..\muledump\lib\
copy /Y renders.png ..\muledump\lib\

findstr renders- constants.js
echo generated by BR-/muledump-render commit
git rev-parse HEAD