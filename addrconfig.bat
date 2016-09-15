@echo off
setlocal enabledelayedexpansion

pushd "%~dp0"

if "%1"=="" (
	echo fork3
	goto fork3
)else goto main

:main
echo main
if "%1"=="static" goto fork1
if "%1"=="dhcp" goto fork2

:fork1
echo setting static
netsh interface ip set address name="无线网络连接" source=static addr=192.168.1.107 mask=255.255.255.0 gateway=192.168.1.1
goto end

:fork2
echo setting dhcp
netsh interface ip set address name="无线网络连接" source=dhcp
goto end

:fork3
echo please input valid option /"static/" or /"dhcp/"

:end
popd
endlocal

