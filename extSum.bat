@echo off
setlocal enabledelayedexpansion

for /f "token=2 delims=." %%i in (escd --n *.*) 