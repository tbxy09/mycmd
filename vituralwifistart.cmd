@echo off
set _my_datetime=%date%_%time%
echo _%_my_datetime% 
netsh wlan set hostednetwork mode=disallow
netsh wlan set hostednetwork mode=allow 




