@echo off
Title Packaging
echo Zipping Directories

REM for /d %%i in ("%cd%"\*) do (
for /d %%i in ("%cd%"\*) do (
    REM zip -r -p %%i
    echo %%i
    "%ProgramFiles%\WinRAR\Rar.exe" a -ep1 -idq -r -y %%i %%i
)
pause