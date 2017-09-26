@echo off
setlocal enabledelayedexpansion

set t=29
set n=1
for /L %%x in (1, 1, %t%) do (
if !n! lss 10 (
   md 2Copy\SHOT_00!n!0\AE
   md 2Copy\SHOT_00!n!0\MOV
) else (
if !n! lss 100 (
   md 2Copy\SHOT_0!n!0\AE
   md 2Copy\SHOT_0!n!0\MOV
)
)
set /a n+=1
)
