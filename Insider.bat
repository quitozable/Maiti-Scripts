@echo off
setlocal enabledelayedexpansion

dir /b /o:n /ad > dir.txt
for /F %%i in (dir.txt) do mkdir "%%i\04 RIG"