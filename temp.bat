@echo off
setlocal enabledelayedexpansion
subl -n
for /f "delims=" %%i in ('es .sublime-project') do subl "%%i"