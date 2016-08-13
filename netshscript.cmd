
@echo off
set _my_datetime=%date%_%time%
set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%

cd\
    if NOT EXIST "C:\TEMP\switch.txt" (
        GOTO :START
    ) ELSE (
        GOTO :STOP
    )

:START
REM Create Temp File for On and Off switch.
ECHO WOOHOO >"C:\TEMP\switch.txt"

REM -- Output everything that is happening into a file called wifi.txt.
REM -- Start out with a timestamp at the top to show when it was done.
REM -- All 'netsh' commands are for setting up the SSID and starting the    sharing.
REM -- I stop and start when starting the service just for prosperity.

echo _%_my_datetime% >"C:\TEMP\wifi.txt"
netsh wlan set hostednetwork mode=allow ssid=ITWORKS key=111222333 >>    "C:\TEMP\wifi.txt"
netsh wlan stop hostednetwork >>"C:\TEMP\wifi.txt"
netsh wlan start hostednetwork >>"C:\TEMP\wifi.txt"
echo MSGBOX "Wifi Sharing Started!" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q
GOTO :END


REM -- This will turn ICS off and give a prompt via VBS that you're turned off.
REM -- I timestamp when the service is turned off in the output file.
REM -- I delete the switch file to let the code know to turn it on when
REM -- when fired off again.  Tempmessage is the msgbox used to show the service
REM -- has been turned off.  Same for the msgbox above when it's on.

:STOP
echo OFF AT _%_my_datetime% >>"C:\TEMP\wifi.txt"
netsh wlan stop hostednetwork >>"C:\TEMP\wifi.txt"
DEL /Q "C:\TEMP\switch.txt"
echo MSGBOX "Wifi Sharing Stopped!" > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs /f /q

:END