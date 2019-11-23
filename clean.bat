@echo off
title Clean Directories
echo Cleaning Directories

for /d %%i in ("%cd%"\*) do (
    echo "%%i"
    cd "%%i"
    if exist Debug (
        echo rmdir /S /Q Debug
    )
    if exist .vs (
        echo rmdir /S /Q .vs
    )
    if exist src/Debug (
        echo rmdir /S /Q "src/Debug"
    )
    cd ..
)