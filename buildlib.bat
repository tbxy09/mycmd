@echo off
if "%1"=="" (
	goto text
)else goto loop

:text
echo buildlib ^<filelist^> ^<liblocation^>
goto end

:loop
echo loop
for /f "delims=" %%a in (%1) do xcopy /y "%%a" %2 > buildliblog.txt
:end
