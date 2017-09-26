@echo off
setlocal enabledelayedexpansion
(
echo username
echo password
)

(echo .)> dir.txt
(echo .)> dir2.txt
(echo .)> dir3.txt

dir "\\mightysan\Proyectos\mighty\YD\02_EPISODES\EP09 BUS\"  /b /o:n /ad > dir.txt
for /F "tokens=* delims=," %%i in (dir.txt) do (echo \\mightysan\Proyectos\mighty\YD\02_EPISODES\EP05 HOUSE\%%i\05_COMP\02_COMP\VER\)>> dir3.txt
for /F "tokens=* delims=," %%a in (dir3.txt) do md "%%a\TIFF"

pause

