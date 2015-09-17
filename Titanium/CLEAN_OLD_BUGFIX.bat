@echo off
:BEGIN
CLS
ECHO.                 
ECHO          SS CLEAN UP TOOL
ECHO.
ECHO This will remove:
ECHO Some unnecessary files probably left by mistake by SS developers
ECHO Files from old bugfix compilation versions that conflict with the new one
ECHO Campaign map.rwm, event.dat and event.idx so the game can renegerate them with the latest modifications if any.
ECHO.
ECHO.
ECHO        1 = CONTINUE
ECHO        2 = EXIT
ECHO.
ECHO.

set /p inputChoice=[1,2]?:
if "%inputChoice%"=="1" (GOTO ONE) else (GOTO TWO)

:ONE
cd data
del campaign\sub\2TPY.txt
del campaign\sub\2TPYL.txt
del campaign\sub\CastleAcademic.txt
del campaign\sub\CityHorseBreeders.txt
del campaign\sub\ReallyBadAI_Update.txt
rmdir /s /q campaign\sub\2TPY
rmdir /s /q campaign\sub\2TPYL
rmdir /s /q campaign\sub\CastleAcademic
rmdir /s /q campaign\sub\CityHorseBreeders
rmdir /s /q ui\unit_models
rmdir /s /q ui\northern_european\eventpics
rmdir /s /q ui\middle_eastern\eventpics
rmdir /s /q ui\greek\buildings
rmdir /s /q ui\eastern_european\eventpics
del sounds\events.idx
del sounds\events.dat
del world\maps\base\map.rwm
del campaign\backup\world\maps\base\map.rwm

:TWO
EXIT 0