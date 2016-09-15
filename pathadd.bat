rem @echo off
rem setlocal enabledelayedexpansion

for /f "delims=" %%a in (pathlist.txt) do set PATH=%%a;%PATH%

echo add remotemongo "192.168.1.102:27017"
set remotemongo=192.168.2.100:27017
echo add escd as \"%cd%\"
set escd=\"%cd%\"