@echo off
Title Packaging
echo Zipping Directories

for /d %%i in ("%cd%"\*) do (
    zip -r -p %%i
)