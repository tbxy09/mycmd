@echo off
setlocal enabledelayedexpansion

if "%1"=="" (
	goto text
)else goto main

:text
echo escd [--n] [searchkey]
echo --n :  return just filename
goto end

:main
if "%1"=="--n" (
esname \"%cd%\" %2
) else goto fork

:fork
es \"%cd%\" %1
:end