@echo off
::the value str is given by the input
set str=%1
::if not given, will pop out a word to remind you 
::if statement must be finished in one line, you can not change it to another line
if "%str%"=="" set /P str=input the string:
::every time you read the value ,you need to add %% in both side
::
if "%PATH:'%str%'=%"=="%PATH%" (
     echo no
) else (
     echo yes
)