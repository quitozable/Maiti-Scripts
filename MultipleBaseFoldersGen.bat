@echo off
setlocal enabledelayedexpansion

set t=43
set n=1
for /L %%x in (1, 1, %t%) do (
if !n! lss 10 (
   md 2Copy\SHOT_00!n!0\JPG
   md 2Copy\SHOT_00!n!0\PSD
) else (
if !n! lss 100 (
   md 2Copy\SHOT_0!n!0\PSD
   md 2Copy\SHOT_0!n!0\JPG
)
)
set /a n+=1
)
