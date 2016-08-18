@echo off
setlocal enabledelayedexpansion

if "%1"=="" (
     goto text
)else goto main

:text
echo "this is for renaming files in batch"
echo batchRn ^<[driver:][^path]^>

goto end

:main
echo main
set filename=x.py
for /f "tokens=1 delims=." %%a in (' dir /b /on "%1"') do (
     set filename=%%a
     echo !filename!x
)

:end