@echo off
setlocal enabledelayedexpansion
(
echo username
echo password
)
(echo New)> dirr.txt
(echo New)> dirrb.txt
(echo .)> dir.txt
(echo .)> dir2.txt
(echo .)> dir3.txt


dir "\\mightysan\Proyectos\HDD2\TEMP\DANIEL\carlso" /s /b /o:n /ad > dir.txt
for /F "tokens=* delims=," %%i in (dir.txt) do del /s /q /f /a "%%i\*.DS_STORE"
for /F "tokens=* delims=," %%i in (dir.txt) do >nul 2>nul dir  /a:-d  "%%i\*"   && (echo Files here  %%i\>> dirr.txt) || (echo No File or Folder found >> dirrB.txt)


dir "\\mightysan\Proyectos\mighty\YD\02_EPISODES\EP05 HOUSE\"  /b /o:n /ad > dir.txt
for /F "tokens=* delims=," %%i in (dir.txt) do (echo \\mightysan\Proyectos\mighty\YD\02_EPISODES\EP05 HOUSE\%%i\03_ANIMATION DEE\)>> dir3.txt
for /F "tokens=* delims=," %%a in (dir3.txt) do dir "%%a" /s /b /o:n /ad >> dir2.txt
for /F "tokens=* delims=," %%i in (dir2.txt) do del /s /q /f /a "%%i\*.DS_STORE"
for /F "tokens=* delims=," %%i in (dir2.txt) do >nul 2>nul dir  /a:-d  "%%i\*" && (echo Files here  %%i\>> dirr.txt) || (echo No File or Folder found %%i\>> dirrB.txt)

pause

