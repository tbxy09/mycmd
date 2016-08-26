@echo off
setlocal enabledelayedexpansion
subl -n
for /f "delims=" %%i in ('escd .sublime-snippet') do subl "%%i"