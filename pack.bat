@echo off
Title Packaging
echo Zipping Directories

for /d %%i in ("%cd%"\*) do (
    echo zip -r -p %%i
    cd ..
)