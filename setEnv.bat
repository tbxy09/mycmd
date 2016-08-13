::=========================
:: code by veronica
:: modyfi:2016/7/28
::=========================
@echo off

:: set the env var
set "add_path1=%1"
set "env_path1=%2"

if not "%add_path1%"=="" (
	PATH|findstr /i /c:"%add_path1%">nul&&(goto PATH_EXIST)
	echo "path not exist": %add_path1%
	echo.
	set /P add_path1="add path: "
	echo.
	set "set_val=%add_path1;%PATH%"
	wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%set_val"
	)

if not "%env_path1%"=="" (
	wmic ENVIRONMENT where "name='%env_path1%'" get VariableValue|findstr /i /c:"VariableValue">nul&&(got ENV_EXIST)
	echo : "env not exist": %env_path1%
	echo.
	echo "add env"
	wmic ENVIRONMENT create name="%env_path1%",username="<system>",VariableValue="%add_path1%"  

	)


:PATH_EXIST
echo "path exist": %add_path1%
echo.

:ENV_EXIST
echo "evn exist":%env_path1%
echo.

echo "print in pretty line"


