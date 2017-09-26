@echo off
setlocal enabledelayedexpansion

set t=34
set n=1
for /L %%x in (1, 1, %t%) do (
if !n! lss 10 (
   md 3D\SHOT_00!n!0\MA
   md 3D\SHOT_00!n!0\MOV
) else (
if !n! lss 100 (
   md 3D\SHOT_0!n!0\MA
   md 3D\SHOT_0!n!0\MOV
)
)
set /a n+=1
)

set n=1
md 2D\02CLEAN\WIP 2D\02CLEAN\MOV 2D\02CLEAN\TOONBOOM 2D\01ROUGH\WIP 2D\01ROUGH\MOV 2D\01ROUGH\TOONBOOM
for /L %%x in (1, 1, %t%) do (
if !n! lss 10 (
   md 2D\03FINALFRAMES\SHOT_00!n!0\CHR
   md 2D\03FINALFRAMES\SHOT_00!n!0\FX
) else (
if !n! lss 100 (
   md 2D\03FINALFRAMES\SHOT_0!n!0\CHR
   md 2D\03FINALFRAMES\SHOT_0!n!0\FX
)
)
set /a n+=1
)