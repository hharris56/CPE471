@echo off
title Github

set /p message="Enter message (include quotes): "

CALL clean
CALL pack

git add *.rar
git commit -m %message%
git push

pause