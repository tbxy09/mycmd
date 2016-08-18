@echo off
setlocal enabledelayedexpansion

if "%1"=="" (
     goto text
)else goto main

:text
echo.
echo This to import json file to mongoserver 192.168.1.102
echo json please use the compressed formort with no \n
echo.
echo savetomongo ^<*.json^> ^<collection^> ^<database^>
goto end

:main
echo main
if "%3"=="" (
	mongoimport --host 192.168.1.102 --port 27017 --db Tb_xy09 --collection %2 --file %1
	) else goto fork
:fork
mongoimport --host 192.168.1.102 --port 27017 --db %3 --collection %2 --file %1
:end