@echo off
title Clean Directories
echo Cleaning Directories

for /d %%i in ("%cd%"\*) do (
    echo "%%i"
    cd "%%i"
    if exist Debug (
        rmdir /S /Q Debug
    )
    if exist .vs (
        rmdir /S /Q .vs
    )
    if exist src/Debug (
        rmdir /S /Q "src/Debug"
    )
    cd ..
)