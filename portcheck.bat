@echo off
if "%1"=="" (
	goto text
)else goto action

:text
echo portcheck ^<port^> 
goto end

:action
netstat -aon | findstr "%1"

:end