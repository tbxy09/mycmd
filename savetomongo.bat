@echo off
setlocal enabledelayedexpansion

pushd %cd%
d:
cd d:/mycmd

if "%1"=="" (
     goto text
)else goto main

:text
echo.
echo This to import json file to mongoserver 192.168.1.102
echo json please use the compressed formort with no \n
echo.
echo savetomongo --output ^<*.json^> ^<collection^> ^<database^>
goto end

:main
echo main
if "%1"=="--output" goto output
if "%4"=="" (
     goto fork1
)else goto fork2


:fork1
mongoimport --host 192.168.2.100 --port 27017 --db "Tb_xy09" --collection %2 --file "%1"
goto output

:fork2
mongoimport --host 192.168.2.100 --port 27017 --db %3 --collection %2 --file %1
goto output

:output
mongo %remotemongo%/Tb_xy09 helpdict.js > mongolog.txt
cat mongolog.txt
:end

popd