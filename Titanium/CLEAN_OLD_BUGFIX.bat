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
del ui\unit_info\aragon\inquisator_info.tga
del ui\unit_info\slave\#ee_bodyguard.tga
del ui\units\aragon\dismounted_mailed_knights_info.tga
del ui\units\aragon\#assassin.tga
del ui\units\aragon\#assassin_southern.tga
del ui\units\aragon\#catholic_bishop.tga
del ui\units\aragon\#catholic_cardinal.tga
del ui\units\aragon\#catholic_priest.tga
del ui\units\aragon\#catholic_bishop.tga
del ui\units\aragon\#heretic_christian.tga
del ui\units\aragon\#inquisator.tga
del ui\units\aragon\#northen_european_merchant.tga
del ui\units\aragon\#norther_spy.tga
del ui\units\aragon\#northern_ambassador.tga
del ui\units\aragon\#northern_princess.tga
del ui\units\aragon\#orthodox priest.tga
del ui\units\aragon\#orthodox_bishop.tga
del ui\units\aragon\#orthodox_patriarch.tga
del ui\units\aragon\#southern_ambassador.tga
del ui\units\aragon\#southern_european.tga
del ui\units\aragon\#southern_princess.tga
del ui\units\aragon\#southern_spy.tga
del ui\units\aragon\admiral.tga
del ui\units\aragon\assassin_southern.tga
del ui\units\aragon\catholic_bishop.tga
del ui\units\aragon\catholic_cardinal.tga
del ui\units\aragon\catholic_priest.tga
del ui\units\aragon\heretic_christian.tga
del ui\units\aragon\inquisator.tga
del ui\units\aragon\northen_european_merchant.tga
del ui\units\aragon\norther_spy.tga
del ui\units\aragon\northern_ambassador.tga
del ui\units\aragon\northern_princess.tga
del ui\units\aragon\orthodox priest.tga
del ui\units\aragon\orthodox_bishop.tga
del ui\units\aragon\orthodox_patriarch.tga
del ui\units\aragon\princess.tga
del ui\units\aragon\southern_ambassador.tga
del ui\units\aragon\southern_european.tga
del ui\units\aragon\southern_princess.tga
del ui\units\aragon\southern_spy.tga
del ui\units\byzantium\dismounted_mailed_knights_info.tga
del ui\units\cumans\dismounted_mailed_knights_info.tga
del ui\units\cumans\#islamic_ambassador.tga
del ui\units\cumans\#islamic_spy.tga
del ui\units\cumans\#northen_european_merchant.tga
del ui\units\cumans\#southern_ambassador.tga
del ui\units\cumans\admiral.tga
del ui\units\cumans\islamic_ambassador.tga
del ui\units\cumans\islamic_spy.tga
del ui\units\cumans\muslim_assassin.tga
del ui\units\cumans\northen_european_merchant.tga
del ui\units\cumans\southern_ambassador.tga
del ui\units\denmark\dismounted_mailed_knights_info.tga
del ui\units\denmark\#assassin.tga
del ui\units\denmark\#catholic_bishop.tga
del ui\units\denmark\#catholic_cardinal.tga
del ui\units\denmark\#catholic_priest.tga
del ui\units\denmark\#northen_european_merchant.tga
del ui\units\denmark\#northern_ambassador.tga
del ui\units\denmark\#northern_princess.tga
del ui\units\denmark\#northern_spy.tga
del ui\units\egypt\dismounted_mailed_knights_info.tga
del ui\units\england\dismounted_mailed_knights_info.tga
del ui\units\france\dismounted_mailed_knights_info.tga
del ui\units\hre\dismounted_mailed_knights_info.tga
del ui\units\hungary\dismounted_mailed_knights_info.tga
del ui\units\jerusalem\dismounted_mailed_knights_info.tga
del ui\units\jerusalem\#assassin_southern.tga
del ui\units\jerusalem\#catholic_bishop.tga
del ui\units\jerusalem\#catholic_cardinal.tga
del ui\units\jerusalem\#catholic_priest.tga
del ui\units\jerusalem\#northen_european_merchant.tga
del ui\units\jerusalem\#northern_ambassador.tga
del ui\units\jerusalem\#northern_spy.tga
del ui\units\jerusalem\#orthodox priest.tga
del ui\units\jerusalem\#orthodox_bishop.tga
del ui\units\jerusalem\#southern_european.tga
del ui\units\jerusalem\#southern_princess.tga
del ui\units\jerusalem\ambassador.tga
del ui\units\jerusalem\assassin_southern.tga
del ui\units\jerusalem\catholic_bishop.tga
del ui\units\jerusalem\catholic_cardinal.tga
del ui\units\jerusalem\catholic_priest.tga
del ui\units\jerusalem\northen_european_merchant.tga
del ui\units\jerusalem\northern_ambassador.tga
del ui\units\jerusalem\northern_spy.tga
del ui\units\jerusalem\orthodox priest.tga
del ui\units\jerusalem\orthodox_bishop.tga
del ui\units\jerusalem\southern_european.tga
del ui\units\jerusalem\southern_princess.tga
del ui\units\kievan_rus\dismounted_mailed_knights_info.tga
del ui\units\kievan_rus\#assassin.tga
del ui\units\kievan_rus\#northen_european_merchant.tga
del ui\units\kievan_rus\#northern_ambassador.tga
del ui\units\kievan_rus\#northern_princess.tga
del ui\units\kievan_rus\#northern_spy.tga
del ui\units\kievan_rus\#orthodox priest.tga
del ui\units\kievan_rus\#orthodox_bishop.tga
del ui\units\kievan_rus\#orthodox_patriarch.tga
del ui\units\kievan_rus\#polish_archers.tga
del ui\units\kievan_rus\#southern_ambassador.tga
del ui\units\kievan_rus\admiral.tga
del ui\units\kievan_rus\northen_european_merchant.tga
del ui\units\kievan_rus\northern_ambassador.tga
del ui\units\kievan_rus\northern_princess.tga
del ui\units\kievan_rus\northern_spy.tga
del ui\units\kievan_rus\orthodox priest.tga
del ui\units\kievan_rus\orthodox_bishop.tga
del ui\units\kievan_rus\orthodox_patriarch.tga
del ui\units\kievan_rus\southern_ambassador.tga
del ui\units\kwarezm\dismounted_mailed_knights_info.tga
del ui\units\lithuania\dismounted_mailed_knights_info.tga
del ui\units\milan\dismounted_mailed_knights_info.tga
del ui\units\milan\#catholic_bishop.tga
del ui\units\milan\#catholic_cardinal.tga
del ui\units\milan\#catholic_priest.tga
del ui\units\milan\#northen_european_merchant.tga
del ui\units\milan\#northern_ambassador.tga
del ui\units\milan\#northern_princess.tga
del ui\units\milan\#northern_spy.tga
del ui\units\milan\#southern_ambassador.tga
del ui\units\milan\#southern_princess.tga
del ui\units\milan\#southern_spy.tga
del ui\units\milan\assassin_southern.tga
del ui\units\milan\catholic_bishop.tga
del ui\units\milan\catholic_cardinal.tga
del "ui\units\milan\Copy of #halberdiers.tga"
del ui\units\milan\northen_european_merchant.tga
del ui\units\milan\northern_ambassador.tga
del ui\units\milan\northern_princess.tga
del ui\units\milan\northern_spy.tga
del ui\units\milan\princess.tga
del ui\units\milan\southern_ambassador.tga
del ui\units\milan\southern_european.tga
del ui\units\milan\southern_princess.tga
del ui\units\milan\southern_spy.tga
del ui\units\mongols\dismounted_mailed_knights_info.tga
del ui\units\mongols\#islamic_ambassador.tga
del ui\units\mongols\#islamic_spy.tga
del ui\units\mongols\#merchant.tga
del ui\units\mongols\#muslim_assassin.tga
del ui\units\mongols\#northen_european_merchant.tga
del ui\units\mongols\islamic_ambassador.tga
del ui\units\mongols\islamic_spy.tga
del ui\units\mongols\muslim_assassin.tga
del ui\units\mongols\northen_european_merchant.tga
del ui\units\mongols\southern_ambassador.tga
del ui\units\moors\dismounted_mailed_knights_info.tga
del ui\units\norway\dismounted_mailed_knights_info.tga
del ui\units\norway\#assassin.tga
del ui\units\norway\#assassin_southern.tga
del ui\units\norway\#catholic_bishop.tga
del ui\units\norway\#catholic_cardinal.tga
del ui\units\norway\#catholic_priest.tga
del ui\units\norway\#heretic_christian.tga
del ui\units\norway\#inquisator.tga
del ui\units\norway\#northen_european_merchant.tga
del ui\units\norway\#northern_ambassador.tga
del ui\units\norway\#northern_princess.tga
del ui\units\norway\#northern_spy.tga
del ui\units\norway\#orthodox_bishop.tga
del ui\units\norway\#orthodox_patriarch.tga
del ui\units\norway\#southern_european.tga
del ui\units\norway\#southern_princess.tga
del ui\units\norway\admiral.tga
del ui\units\norway\assassin_southern.tga
del ui\units\norway\bishop.tga
del ui\units\norway\cardinal.tga
del ui\units\norway\catholic_bishop.tga
del ui\units\norway\catholic_cardinal.tga
del ui\units\norway\catholic_priest.tga
del ui\units\norway\heretic_christian.tga
del ui\units\norway\inquisator.tga
del ui\units\norway\Kopie von #gotland_footmen.tga
del ui\units\norway\northen_european_merchant.tga
del ui\units\norway\northern_ambassador.tga
del ui\units\norway\northern_princess.tga
del ui\units\norway\northern_spy.tga
del ui\units\norway\orthodox_bishop.tga
del ui\units\norway\orthodox_patriarch.tga
del ui\units\norway\princess.tga
del ui\units\norway\southern_european.tga
del ui\units\norway\southern_princess.tga
del ui\units\papal_states\dismounted_mailed_knights_info.tga
del ui\units\poland\dismounted_mailed_knights_info.tga
del ui\units\portugal\dismounted_mailed_knights_info.tga
del ui\units\russia\dismounted_mailed_knights_info.tga
del ui\units\scotland\dismounted_mailed_knights_info.tga
del ui\units\sicily\dismounted_mailed_knights_info.tga
del ui\units\spain\dismounted_mailed_knights_info.tga
del ui\units\teutonic_order\dismounted_mailed_knights_info.tga
del ui\units\timurids\#islamic_ambassador.tga
del ui\units\timurids\#islamic_spy.tga
del ui\units\timurids\#merchant.tga
del ui\units\timurids\#muslim_assassin.tga
del ui\units\timurids\#northen_european_merchant.tga
del ui\units\timurids\#southern_ambassador.tga
del ui\units\timurids\admiral.tga
del ui\units\timurids\islamic_ambassador.tga
del ui\units\timurids\islamic_spy.tga
del ui\units\timurids\muslim_assassin.tga
del ui\units\timurids\northen_european_merchant.tga
del ui\units\timurids\southern_ambassador.tga
del ui\units\turks\dismounted_mailed_knights_info.tga
del ui\units\venice\dismounted_mailed_knights_info.tga
del models_strat\symbol_apachean.cas
del models_strat\textures\#banner_symbol_apachean.tga
del models_strat\textures\#banner_symbol_apachean.tga.dds
del models_strat\textures\#banner_symbol_aztecs.tga
del models_strat\textures\#banner_symbol_aztecs.tga.dds
del models_strat\textures\#banner_symbol_carthage_rebel.tga
del models_strat\textures\#banner_symbol_carthage_rebel.tga.dds
del models_strat\textures\#banner_symbol_kievan_rus.tga
del models_strat\textures\#banner_symbol_kievan_rus.tga.dds
del models_strat\textures\#banner_symbol_novgorod.tga
del models_strat\textures\#banner_symbol_novgorod.tga.dds
del sounds\events.idx
del sounds\events.dat
del world\maps\base\map.rwm
del campaign\backup\world\maps\base\map.rwm

:TWO
EXIT 0