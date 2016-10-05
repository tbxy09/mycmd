@echo off
setlocal enabledelayedexpansion
pushd %cd%
rem cd C:\Program Files (x86)\Google\Chrome\Application

if "%1"=="" (
	goto text
)else goto main

:text
echo "this is for chrome extension packaging"
echo "chromepkg -clean [pack-extension] [pack-extension-key]"
goto end

:main
if "%1"=="-clean" (
	cd %2
	cd ..
	del *.crx
	del *.pem
	goto fork12
) else goto fork11

:fork11
if "%2"=="" (
	chrome.exe --pack-extension=%1
	goto end
) else goto fork21
:fork12
if "%3"=="" (
	chrome.exe --pack-extension=%2
	goto end
) else goto fork22

:fork21
chrome.exe --pack-extension=%1 --pack-extension-key=%2
goto end

:fork22
chrome.exe --pack-extension=%2 --pack-extension-key=%3
:end

popd
