@echo off
:BEGIN
CLS
ECHO.                 
ECHO          TITANIUM SETUP TOOL
ECHO.
ECHO This will clone SS folder and merge it with Titanium's one
ECHO then it will remove any unnecessary files from cloned SS6.4
ECHO and finally apply Titanium's Campaigns and Submod options.
ECHO In case SS6.4 mod is not found the setup will check if has already
ECHO been merged with Titanium's folder.
ECHO.
ECHO This batch file will delete itself once the installation is done.
ECHO.
ECHO Are you sure you want to proceed?
ECHO        1 = CONTINUE
ECHO        2 = EXIT
ECHO.
ECHO.

set /p inputChoice=[1,2]?:
if "%inputChoice%"=="1" (GOTO ONE) else (GOTO TWO)

:ONE
for %%* in (.) do set foldername=%%~n*
if not "%foldername%"=="Titanium_Alpha" (GOTO WRONG)

cd..
IF NOT EXIST "SS6.3\" GOTO WRONG2
IF NOT EXIST "SS6.3\SS_setup.exe" GOTO WRONG2
IF NOT EXIST "SS6.3\SS_launcher.exe" GOTO WRONG2
IF NOT EXIST "SS6.3\data\unit_models" GOTO WRONG2
ECHO cloning Stainless Steel...
@echo off
start/wait xcopy "SS6.3\data" "Titanium_Alpha\data\" /e /y
xcopy "SS6.3\SS_Launcher.exe" "Titanium_Alpha\" /y
xcopy "SS6.3\SS_setup.exe" "Titanium_Alpha\" /y

:CLEAN
ECHO removing unnecessary files...
@echo off
cd "Titanium_Alpha"
rd data\ui\unit_models /s /q
rd data\ui\northern_european\eventpics /s /q
rd data\ui\middle_eastern\eventpics /s /q
rd data\ui\greek\buildings /s /q 
rd data\ui\eastern_european\eventpics /s /q
rd data\terrain\aerial_map /s /q
del data\ui\northern_european\stratpage_03.tga
del data\ui\northern_european\interface\battlepage_01.tga_mouseover.tga
del data\ui\northern_european\interface\battlepage_02.tga
del data\ui\northern_european\interface\battlepage_02.tga_mouseover.tga
del data\ui\northern_european\interface\battlepage_03.tga
del data\ui\northern_european\interface\battlepage_03.tga_mouseover.tga
del data\ui\northern_european\interface\sharedpage_00.tga_mouseover.tga
del data\ui\northern_european\interface\sharedpage_01.tga
del data\ui\northern_european\interface\sharedpage_01.tga_mouseover.tga
del data\ui\northern_european\interface\shieldpage_00.tga
del data\ui\northern_european\interface\shieldpage_00.tga_mouseover.tga
del data\ui\northern_european\interface\shieldpage_01.tga
del data\ui\northern_european\interface\shieldpage_01.tga_mouseover.tga
del data\ui\northern_european\interface\stratpage_01.tga_mouseover.tga
del data\ui\northern_european\interface\stratpage_02.tga
del data\ui\northern_european\interface\stratpage_02.tga_mouseover.tga
del data\ui\northern_european\interface\stratpage_03.tga_mouseover.tga
del data\ui\northern_european\interface\stratpage_04.tga_mouseover.tga
del data\ui\middle_eastern\interface\battlepage_01.tga_mouseover.tga
del data\ui\middle_eastern\interface\battlepage_02.tga
del data\ui\middle_eastern\interface\battlepage_02.tga_mouseover.tga
del data\ui\middle_eastern\interface\battlepage_03.tga
del data\ui\middle_eastern\interface\battlepage_03.tga_mouseover.tga
del data\ui\middle_eastern\interface\sharedpage_00.tga_mouseover.tga
del data\ui\middle_eastern\interface\sharedpage_01.tga_mouseover.tga
del data\ui\middle_eastern\interface\shieldpage_00.tga
del data\ui\middle_eastern\interface\shieldpage_00.tga_mouseover.tga
del data\ui\middle_eastern\interface\shieldpage_01.tga
del data\ui\middle_eastern\interface\shieldpage_01.tga_mouseover.tga
del data\ui\middle_eastern\interface\stratpage_01.tga_mouseover.tga
del data\ui\middle_eastern\interface\stratpage_02.tga
del data\ui\middle_eastern\interface\stratpage_02.tga_mouseover.tga
del data\ui\middle_eastern\interface\stratpage_03.tga_mouseover.tga
del data\ui\middle_eastern\interface\stratpage_04.tga_mouseover.tga
del data\ui\greek\interface\battlepage_02.tga
del data\ui\greek\interface\battlepage_03.tga
del data\ui\greek\interface\shieldpage_01.tga
del data\ui\greek\interface\shieldpage_00.tga
del data\ui\greek\interface\shieldpage_01.tga
del data\ui\greek\interface\stratpage_01.tga
del data\ui\greek\interface\stratpage_02.tga
del data\ui\eastern_european\interface\battlepage_01.tga_mouseover.tga
del data\ui\eastern_european\interface\battlepage_02.tga
del data\ui\eastern_european\interface\battlepage_02.tga_mouseover.tga
del data\ui\eastern_european\interface\battlepage_03.tga
del data\ui\eastern_european\interface\battlepage_03.tga_mouseover.tga
del data\ui\eastern_european\interface\sharedpage_00.tga_mouseover.tga
del data\ui\eastern_european\interface\sharedpage_01.tga_mouseover.tga
del data\ui\eastern_european\interface\shieldpage_00.tga
del data\ui\eastern_european\interface\shieldpage_00.tga_mouseover.tga
del data\ui\eastern_european\interface\shieldpage_01.tga
del data\ui\eastern_european\interface\shieldpage_01.tga_mouseover.tga
del data\ui\eastern_european\interface\stratpage_01.tga_mouseover.tga
del data\ui\eastern_european\interface\stratpage_02.tga
del data\ui\eastern_european\interface\stratpage_02.tga_mouseover.tga
del data\ui\eastern_european\interface\stratpage_03.tga_mouseover.tga
del data\ui\eastern_european\interface\stratpage_04.tga_mouseover.tga
del data\ui\unit_info\aragon\inquisator_info.tga
del data\ui\unit_info\byzantium\dismounted_mailed_knights_info.tga
del data\ui\unit_info\egypt\dismounted_mailed_knights_info.tga
del data\ui\unit_info\england\norman_serjeants.tga
del data\ui\unit_info\kievan_rus\dismounted_mailed_knights_info.tga
del data\ui\unit_info\kwarezm\dismounted_mailed_knights_info.tga
del data\ui\unit_info\mongols\dismounted_mailed_knights_info.tga
del data\ui\unit_info\moors\dismounted_mailed_knights_info.tga
del data\ui\unit_info\russia\dismounted_mailed_knights_info.tga
del data\ui\unit_info\sicily\dismounted_mailed_knights_info.tga
del data\ui\unit_info\slave\#ee_bodyguard.tga
del data\ui\unit_info\teutonic_order\dismounted_mailed_knights_info.tga
del data\ui\unit_info\turks\dismounted_mailed_knights_info.tga
del data\ui\units\aragon\dismounted_mailed_knights_info.tga
del data\ui\units\aragon\#assassin.tga
del data\ui\units\aragon\#assassin_southern.tga
del data\ui\units\aragon\#catholic_bishop.tga
del data\ui\units\aragon\#catholic_cardinal.tga
del data\ui\units\aragon\#catholic_priest.tga
del data\ui\units\aragon\#catholic_bishop.tga
del data\ui\units\aragon\#heretic_christian.tga
del data\ui\units\aragon\#inquisator.tga
del data\ui\units\aragon\#northen_european_merchant.tga
del data\ui\units\aragon\#norther_spy.tga
del data\ui\units\aragon\#northern_ambassador.tga
del data\ui\units\aragon\#northern_princess.tga
del data\ui\units\aragon\#orthodox priest.tga
del data\ui\units\aragon\#orthodox_bishop.tga
del data\ui\units\aragon\#orthodox_patriarch.tga
del data\ui\units\aragon\#southern_ambassador.tga
del data\ui\units\aragon\#southern_european.tga
del data\ui\units\aragon\#southern_princess.tga
del data\ui\units\aragon\#southern_spy.tga
del data\ui\units\aragon\admiral.tga
del data\ui\units\aragon\assassin_southern.tga
del data\ui\units\aragon\catholic_bishop.tga
del data\ui\units\aragon\catholic_cardinal.tga
del data\ui\units\aragon\catholic_priest.tga
del data\ui\units\aragon\heretic_christian.tga
del data\ui\units\aragon\inquisator.tga
del data\ui\units\aragon\northen_european_merchant.tga
del data\ui\units\aragon\norther_spy.tga
del data\ui\units\aragon\northern_ambassador.tga
del data\ui\units\aragon\northern_princess.tga
del data\ui\units\aragon\orthodox priest.tga
del data\ui\units\aragon\orthodox_bishop.tga
del data\ui\units\aragon\orthodox_patriarch.tga
del data\ui\units\aragon\princess.tga
del data\ui\units\aragon\southern_ambassador.tga
del data\ui\units\aragon\southern_european.tga
del data\ui\units\aragon\southern_princess.tga
del data\ui\units\aragon\southern_spy.tga
del data\ui\units\byzantium\dismounted_mailed_knights_info.tga
del data\ui\units\cumans\dismounted_mailed_knights_info.tga
del data\ui\units\cumans\#islamic_ambassador.tga
del data\ui\units\cumans\#islamic_spy.tga
del data\ui\units\cumans\#northen_european_merchant.tga
del data\ui\units\cumans\#southern_ambassador.tga
del data\ui\units\cumans\admiral.tga
del data\ui\units\cumans\islamic_ambassador.tga
del data\ui\units\cumans\islamic_spy.tga
del data\ui\units\cumans\muslim_assassin.tga
del data\ui\units\cumans\northen_european_merchant.tga
del data\ui\units\cumans\southern_ambassador.tga
del data\ui\units\denmark\dismounted_mailed_knights_info.tga
del data\ui\units\denmark\#assassin.tga
del data\ui\units\denmark\#catholic_bishop.tga
del data\ui\units\denmark\#catholic_cardinal.tga
del data\ui\units\denmark\#catholic_priest.tga
del data\ui\units\denmark\#northen_european_merchant.tga
del data\ui\units\denmark\#northern_ambassador.tga
del data\ui\units\denmark\#northern_princess.tga
del data\ui\units\denmark\#northern_spy.tga
del data\ui\units\egypt\dismounted_mailed_knights_info.tga
del data\ui\units\england\dismounted_mailed_knights_info.tga
del data\ui\units\france\dismounted_mailed_knights_info.tga
del data\ui\units\hre\dismounted_mailed_knights_info.tga
del data\ui\units\hungary\dismounted_mailed_knights_info.tga
del data\ui\units\jerusalem\dismounted_mailed_knights_info.tga
del data\ui\units\jerusalem\#assassin_southern.tga
del data\ui\units\jerusalem\#catholic_bishop.tga
del data\ui\units\jerusalem\#catholic_cardinal.tga
del data\ui\units\jerusalem\#catholic_priest.tga
del data\ui\units\jerusalem\#northen_european_merchant.tga
del data\ui\units\jerusalem\#northern_ambassador.tga
del data\ui\units\jerusalem\#northern_spy.tga
del data\ui\units\jerusalem\#orthodox priest.tga
del data\ui\units\jerusalem\#orthodox_bishop.tga
del data\ui\units\jerusalem\#southern_european.tga
del data\ui\units\jerusalem\#southern_princess.tga
del data\ui\units\jerusalem\ambassador.tga
del data\ui\units\jerusalem\assassin_southern.tga
del data\ui\units\jerusalem\catholic_bishop.tga
del data\ui\units\jerusalem\catholic_cardinal.tga
del data\ui\units\jerusalem\catholic_priest.tga
del data\ui\units\jerusalem\northen_european_merchant.tga
del data\ui\units\jerusalem\northern_ambassador.tga
del data\ui\units\jerusalem\northern_spy.tga
del data\ui\units\jerusalem\orthodox priest.tga
del data\ui\units\jerusalem\orthodox_bishop.tga
del data\ui\units\jerusalem\southern_european.tga
del data\ui\units\jerusalem\southern_princess.tga
del data\ui\units\kievan_rus\dismounted_mailed_knights_info.tga
del data\ui\units\kievan_rus\#assassin.tga
del data\ui\units\kievan_rus\#northen_european_merchant.tga
del data\ui\units\kievan_rus\#northern_ambassador.tga
del data\ui\units\kievan_rus\#northern_princess.tga
del data\ui\units\kievan_rus\#northern_spy.tga
del data\ui\units\kievan_rus\#orthodox priest.tga
del data\ui\units\kievan_rus\#orthodox_bishop.tga
del data\ui\units\kievan_rus\#orthodox_patriarch.tga
del data\ui\units\kievan_rus\#polish_archers.tga
del data\ui\units\kievan_rus\#southern_ambassador.tga
del data\ui\units\kievan_rus\admiral.tga
del data\ui\units\kievan_rus\northen_european_merchant.tga
del data\ui\units\kievan_rus\northern_ambassador.tga
del data\ui\units\kievan_rus\northern_princess.tga
del data\ui\units\kievan_rus\northern_spy.tga
del data\ui\units\kievan_rus\orthodox priest.tga
del data\ui\units\kievan_rus\orthodox_bishop.tga
del data\ui\units\kievan_rus\orthodox_patriarch.tga
del data\ui\units\kievan_rus\southern_ambassador.tga
del data\ui\units\kwarezm\dismounted_mailed_knights_info.tga
del data\ui\units\kwarezm\admiral.tga
del data\ui\units\kwarezm\islamic_ambassador.tga
del data\ui\units\kwarezm\islamic_spy.tga
del data\ui\units\kwarezm\muslim_assassin.tga
del data\ui\units\kwarezm\northen_european_merchant.tga
del data\ui\units\kwarezm\northern_spy.tga
del data\ui\units\lithuania\dismounted_mailed_knights_info.tga
del data\ui\units\milan\dismounted_mailed_knights_info.tga
del data\ui\units\milan\#catholic_bishop.tga
del data\ui\units\milan\#catholic_cardinal.tga
del data\ui\units\milan\#catholic_priest.tga
del data\ui\units\milan\#northen_european_merchant.tga
del data\ui\units\milan\#northern_ambassador.tga
del data\ui\units\milan\#northern_princess.tga
del data\ui\units\milan\#northern_spy.tga
del data\ui\units\milan\#southern_ambassador.tga
del data\ui\units\milan\#southern_princess.tga
del data\ui\units\milan\#southern_spy.tga
del data\ui\units\milan\assassin_southern.tga
del data\ui\units\milan\catholic_bishop.tga
del data\ui\units\milan\catholic_cardinal.tga
del "data\ui\units\milan\Copy of #halberdiers.tga"
del data\ui\units\milan\northen_european_merchant.tga
del data\ui\units\milan\northern_ambassador.tga
del data\ui\units\milan\northern_princess.tga
del data\ui\units\milan\northern_spy.tga
del data\ui\units\milan\princess.tga
del data\ui\units\milan\southern_ambassador.tga
del data\ui\units\milan\southern_european.tga
del data\ui\units\milan\southern_princess.tga
del data\ui\units\milan\southern_spy.tga
del data\ui\units\mongols\dismounted_mailed_knights_info.tga
del data\ui\units\mongols\#islamic_ambassador.tga
del data\ui\units\mongols\#islamic_spy.tga
del data\ui\units\mongols\#merchant.tga
del data\ui\units\mongols\#muslim_assassin.tga
del data\ui\units\mongols\#northen_european_merchant.tga
del data\ui\units\mongols\islamic_ambassador.tga
del data\ui\units\mongols\islamic_spy.tga
del data\ui\units\mongols\muslim_assassin.tga
del data\ui\units\mongols\northen_european_merchant.tga
del data\ui\units\mongols\southern_ambassador.tga
del data\ui\units\moors\dismounted_mailed_knights_info.tga
del data\ui\units\norway\dismounted_mailed_knights_info.tga
del data\ui\units\norway\#assassin.tga
del data\ui\units\norway\#assassin_southern.tga
del data\ui\units\norway\#catholic_bishop.tga
del data\ui\units\norway\#catholic_cardinal.tga
del data\ui\units\norway\#catholic_priest.tga
del data\ui\units\norway\#heretic_christian.tga
del data\ui\units\norway\#inquisator.tga
del data\ui\units\norway\#northen_european_merchant.tga
del data\ui\units\norway\#northern_ambassador.tga
del data\ui\units\norway\#northern_princess.tga
del data\ui\units\norway\#northern_spy.tga
del data\ui\units\norway\#orthodox_bishop.tga
del data\ui\units\norway\#orthodox_patriarch.tga
del data\ui\units\norway\#southern_european.tga
del data\ui\units\norway\#southern_princess.tga
del data\ui\units\norway\admiral.tga
del data\ui\units\norway\assassin_southern.tga
del data\ui\units\norway\bishop.tga
del data\ui\units\norway\cardinal.tga
del data\ui\units\norway\catholic_bishop.tga
del data\ui\units\norway\catholic_cardinal.tga
del data\ui\units\norway\catholic_priest.tga
del data\ui\units\norway\heretic_christian.tga
del data\ui\units\norway\inquisator.tga
del data\ui\units\norway\Kopie von #gotland_footmen.tga
del data\ui\units\norway\northen_european_merchant.tga
del data\ui\units\norway\northern_ambassador.tga
del data\ui\units\norway\northern_princess.tga
del data\ui\units\norway\northern_spy.tga
del data\ui\units\norway\orthodox_bishop.tga
del data\ui\units\norway\orthodox_patriarch.tga
del data\ui\units\norway\princess.tga
del data\ui\units\norway\southern_european.tga
del data\ui\units\norway\southern_princess.tga
del data\ui\units\papal_states\dismounted_mailed_knights_info.tga
del data\ui\units\poland\dismounted_mailed_knights_info.tga
del data\ui\units\portugal\dismounted_mailed_knights_info.tga
del data\ui\units\russia\dismounted_mailed_knights_info.tga
del data\ui\units\scotland\dismounted_mailed_knights_info.tga
del data\ui\units\sicily\dismounted_mailed_knights_info.tga
del data\ui\units\spain\dismounted_mailed_knights_info.tga
del data\ui\units\teutonic_order\dismounted_mailed_knights_info.tga
del data\ui\units\timurids\#islamic_ambassador.tga
del data\ui\units\timurids\#islamic_spy.tga
del data\ui\units\timurids\#merchant.tga
del data\ui\units\timurids\#muslim_assassin.tga
del data\ui\units\timurids\#northen_european_merchant.tga
del data\ui\units\timurids\#southern_ambassador.tga
del data\ui\units\timurids\admiral.tga
del data\ui\units\timurids\islamic_ambassador.tga
del data\ui\units\timurids\islamic_spy.tga
del data\ui\units\timurids\muslim_assassin.tga
del data\ui\units\timurids\northen_european_merchant.tga
del data\ui\units\timurids\southern_ambassador.tga
del data\ui\units\turks\dismounted_mailed_knights_info.tga
del data\ui\units\venice\dismounted_mailed_knights_info.tga
del data\ui\units\aragon\#dismounted_km.tga
del data\ui\units\aragon\#dismounted_knights_hospitaller.tga
del data\ui\units\aragon\#dismounted_knights_of_santiago.tga
del data\ui\units\aragon\#dismounted_knights_templar.tga
del data\ui\units\aragon\#dismounted_ritterbruder.tga
del data\ui\units\aragon\#knights_hospitaller.tga
del data\ui\units\aragon\#knights_of_montesa.tga
del data\ui\units\aragon\#knights_of_santiago.tga
del data\ui\units\aragon\#knights_templar.tga
del data\ui\units\aragon\#ritterbruder.tga
del data\ui\unit_info\aragon\dismounted_km_info.tga
del data\ui\unit_info\aragon\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\aragon\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\aragon\dismounted_knights_templar_info.tga
del data\ui\unit_info\aragon\dismounted_ritterbruder_info.tga
del data\ui\unit_info\aragon\knights_hospitaller_info.tga
del data\ui\unit_info\aragon\knights_of_montesa_info.tga
del data\ui\unit_info\aragon\knights_of_santiago_info.tga
del data\ui\unit_info\aragon\knights_templar_info.tga
del data\ui\unit_info\aragon\ritterbruder_info.tga

del data\ui\units\denmark\#dismounted_km.tga
del data\ui\units\denmark\#dismounted_knights_hospitaller.tga
del data\ui\units\denmark\#dismounted_knights_of_santiago.tga
del data\ui\units\denmark\#dismounted_knights_templar.tga
del data\ui\units\denmark\#dismounted_ritterbruder.tga
del data\ui\units\denmark\#knights_hospitaller.tga
del data\ui\units\denmark\#knights_of_montesa.tga
del data\ui\units\denmark\#knights_of_santiago.tga
del data\ui\units\denmark\#knights_templar.tga
del data\ui\units\denmark\#ritterbruder.tga
del data\ui\unit_info\denmark\dismounted_km_info.tga
del data\ui\unit_info\denmark\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\denmark\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\denmark\dismounted_knights_templar_info.tga
del data\ui\unit_info\denmark\dismounted_ritterbruder_info.tga
del data\ui\unit_info\denmark\knights_hospitaller_info.tga
del data\ui\unit_info\denmark\knights_of_montesa_info.tga
del data\ui\unit_info\denmark\knights_of_santiago_info.tga
del data\ui\unit_info\denmark\knights_templar_info.tga
del data\ui\unit_info\denmark\ritterbruder_info.tga

del data\ui\units\england\#dismounted_km.tga
del data\ui\units\england\#dismounted_knights_hospitaller.tga
del data\ui\units\england\#dismounted_knights_of_santiago.tga
del data\ui\units\england\#dismounted_knights_templar.tga
del data\ui\units\england\#dismounted_ritterbruder.tga
del data\ui\units\england\#knights_hospitaller.tga
del data\ui\units\england\#knights_of_montesa.tga
del data\ui\units\england\#knights_of_santiago.tga
del data\ui\units\england\#knights_templar.tga
del data\ui\units\england\#ritterbruder.tga
del data\ui\unit_info\england\dismounted_km_info.tga
del data\ui\unit_info\england\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\england\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\england\dismounted_knights_templar_info.tga
del data\ui\unit_info\england\dismounted_ritterbruder_info.tga
del data\ui\unit_info\england\knights_hospitaller_info.tga
del data\ui\unit_info\england\knights_of_montesa_info.tga
del data\ui\unit_info\england\knights_of_santiago_info.tga
del data\ui\unit_info\england\knights_templar_info.tga
del data\ui\unit_info\england\ritterbruder_info.tga

del data\ui\units\france\#dismounted_km.tga
del data\ui\units\france\#dismounted_knights_hospitaller.tga
del data\ui\units\france\#dismounted_knights_of_santiago.tga
del data\ui\units\france\#dismounted_knights_templar.tga
del data\ui\units\france\#dismounted_ritterbruder.tga
del data\ui\units\france\#knights_hospitaller.tga
del data\ui\units\france\#knights_of_montesa.tga
del data\ui\units\france\#knights_of_santiago.tga
del data\ui\units\france\#knights_templar.tga
del data\ui\units\france\#ritterbruder.tga
del data\ui\unit_info\france\dismounted_km_info.tga
del data\ui\unit_info\france\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\france\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\france\dismounted_knights_templar_info.tga
del data\ui\unit_info\france\dismounted_ritterbruder_info.tga
del data\ui\unit_info\france\knights_hospitaller_info.tga
del data\ui\unit_info\france\knights_of_montesa_info.tga
del data\ui\unit_info\france\knights_of_santiago_info.tga
del data\ui\unit_info\france\knights_templar_info.tga
del data\ui\unit_info\france\ritterbruder_info.tga

del data\ui\units\hre\#dismounted_km.tga
del data\ui\units\hre\#dismounted_knights_hospitaller.tga
del data\ui\units\hre\#dismounted_knights_of_santiago.tga
del data\ui\units\hre\#dismounted_knights_templar.tga
del data\ui\units\hre\#dismounted_ritterbruder.tga
del data\ui\units\hre\#knights_hospitaller.tga
del data\ui\units\hre\#knights_of_montesa.tga
del data\ui\units\hre\#knights_of_santiago.tga
del data\ui\units\hre\#knights_templar.tga
del data\ui\units\hre\#ritterbruder.tga
del data\ui\unit_info\hre\dismounted_km_info.tga
del data\ui\unit_info\hre\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\hre\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\hre\dismounted_knights_templar_info.tga
del data\ui\unit_info\hre\dismounted_ritterbruder_info.tga
del data\ui\unit_info\hre\knights_hospitaller_info.tga
del data\ui\unit_info\hre\knights_of_montesa_info.tga
del data\ui\unit_info\hre\knights_of_santiago_info.tga
del data\ui\unit_info\hre\knights_templar_info.tga
del data\ui\unit_info\hre\ritterbruder_info.tga

del data\ui\units\hungary\#dismounted_km.tga
del data\ui\units\hungary\#dismounted_knights_hospitaller.tga
del data\ui\units\hungary\#dismounted_knights_of_santiago.tga
del data\ui\units\hungary\#dismounted_knights_templar.tga
del data\ui\units\hungary\#dismounted_ritterbruder.tga
del data\ui\units\hungary\#knights_hospitaller.tga
del data\ui\units\hungary\#knights_of_montesa.tga
del data\ui\units\hungary\#knights_of_santiago.tga
del data\ui\units\hungary\#knights_templar.tga
del data\ui\units\hungary\#ritterbruder.tga
del data\ui\unit_info\hungary\dismounted_km_info.tga
del data\ui\unit_info\hungary\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\hungary\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\hungary\dismounted_knights_templar_info.tga
del data\ui\unit_info\hungary\dismounted_ritterbruder_info.tga
del data\ui\unit_info\hungary\knights_hospitaller_info.tga
del data\ui\unit_info\hungary\knights_of_montesa_info.tga
del data\ui\unit_info\hungary\knights_of_santiago_info.tga
del data\ui\unit_info\hungary\knights_templar_info.tga
del data\ui\unit_info\hungary\ritterbruder_info.tga

del data\ui\units\jerusalem\#dismounted_km.tga
del data\ui\units\jerusalem\#dismounted_knights_hospitaller.tga
del data\ui\units\jerusalem\#dismounted_knights_of_santiago.tga
del data\ui\units\jerusalem\#dismounted_knights_templar.tga
del data\ui\units\jerusalem\#dismounted_ritterbruder.tga
del data\ui\units\jerusalem\#knights_hospitaller.tga
del data\ui\units\jerusalem\#knights_of_montesa.tga
del data\ui\units\jerusalem\#knights_of_santiago.tga
del data\ui\units\jerusalem\#knights_templar.tga
del data\ui\units\jerusalem\#ritterbruder.tga
del data\ui\unit_info\jerusalem\dismounted_km_info.tga
del data\ui\unit_info\jerusalem\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\jerusalem\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\jerusalem\dismounted_knights_templar_info.tga
del data\ui\unit_info\jerusalem\dismounted_ritterbruder_info.tga
del data\ui\unit_info\jerusalem\knights_hospitaller_info.tga
del data\ui\unit_info\jerusalem\knights_of_montesa_info.tga
del data\ui\unit_info\jerusalem\knights_of_santiago_info.tga
del data\ui\unit_info\jerusalem\knights_templar_info.tga
del data\ui\unit_info\jerusalem\ritterbruder_info.tga

del data\ui\units\milan\#dismounted_km.tga
del data\ui\units\milan\#dismounted_knights_hospitaller.tga
del data\ui\units\milan\#dismounted_knights_of_santiago.tga
del data\ui\units\milan\#dismounted_knights_templar.tga
del data\ui\units\milan\#dismounted_ritterbruder.tga
del data\ui\units\milan\#knights_hospitaller.tga
del data\ui\units\milan\#knights_of_montesa.tga
del data\ui\units\milan\#knights_of_santiago.tga
del data\ui\units\milan\#knights_templar.tga
del data\ui\units\milan\#ritterbruder.tga
del data\ui\unit_info\milan\dismounted_km_info.tga
del data\ui\unit_info\milan\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\milan\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\milan\dismounted_knights_templar_info.tga
del data\ui\unit_info\milan\dismounted_ritterbruder_info.tga
del data\ui\unit_info\milan\knights_hospitaller_info.tga
del data\ui\unit_info\milan\knights_of_montesa_info.tga
del data\ui\unit_info\milan\knights_of_santiago_info.tga
del data\ui\unit_info\milan\knights_templar_info.tga
del data\ui\unit_info\milan\ritterbruder_info.tga

del data\ui\units\norway\#dismounted_km.tga
del data\ui\units\norway\#dismounted_knights_hospitaller.tga
del data\ui\units\norway\#dismounted_knights_of_santiago.tga
del data\ui\units\norway\#dismounted_knights_templar.tga
del data\ui\units\norway\#dismounted_ritterbruder.tga
del data\ui\units\norway\#knights_hospitaller.tga
del data\ui\units\norway\#knights_of_montesa.tga
del data\ui\units\norway\#knights_of_santiago.tga
del data\ui\units\norway\#knights_templar.tga
del data\ui\units\norway\#ritterbruder.tga
del data\ui\unit_info\norway\dismounted_km_info.tga
del data\ui\unit_info\norway\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\norway\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\norway\dismounted_knights_templar_info.tga
del data\ui\unit_info\norway\dismounted_ritterbruder_info.tga
del data\ui\unit_info\norway\knights_hospitaller_info.tga
del data\ui\unit_info\norway\knights_of_montesa_info.tga
del data\ui\unit_info\norway\knights_of_santiago_info.tga
del data\ui\unit_info\norway\knights_templar_info.tga
del data\ui\unit_info\norway\ritterbruder_info.tga

del data\ui\units\papal_states\#dismounted_km.tga
del data\ui\units\papal_states\#dismounted_knights_hospitaller.tga
del data\ui\units\papal_states\#dismounted_knights_of_santiago.tga
del data\ui\units\papal_states\#dismounted_knights_templar.tga
del data\ui\units\papal_states\#dismounted_ritterbruder.tga
del data\ui\units\papal_states\#knights_hospitaller.tga
del data\ui\units\papal_states\#knights_of_montesa.tga
del data\ui\units\papal_states\#knights_of_santiago.tga
del data\ui\units\papal_states\#knights_templar.tga
del data\ui\units\papal_states\#ritterbruder.tga
del data\ui\unit_info\papal_states\dismounted_km_info.tga
del data\ui\unit_info\papal_states\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\papal_states\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\papal_states\dismounted_knights_templar_info.tga
del data\ui\unit_info\papal_states\dismounted_ritterbruder_info.tga
del data\ui\unit_info\papal_states\knights_hospitaller_info.tga
del data\ui\unit_info\papal_states\knights_of_montesa_info.tga
del data\ui\unit_info\papal_states\knights_of_santiago_info.tga
del data\ui\unit_info\papal_states\knights_templar_info.tga
del data\ui\unit_info\papal_states\ritterbruder_info.tga

del data\ui\units\poland\#dismounted_km.tga
del data\ui\units\poland\#dismounted_knights_hospitaller.tga
del data\ui\units\poland\#dismounted_knights_of_santiago.tga
del data\ui\units\poland\#dismounted_knights_templar.tga
del data\ui\units\poland\#dismounted_ritterbruder.tga
del data\ui\units\poland\#knights_hospitaller.tga
del data\ui\units\poland\#knights_of_montesa.tga
del data\ui\units\poland\#knights_of_santiago.tga
del data\ui\units\poland\#knights_templar.tga
del data\ui\units\poland\#ritterbruder.tga
del data\ui\unit_info\poland\dismounted_km_info.tga
del data\ui\unit_info\poland\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\poland\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\poland\dismounted_knights_templar_info.tga
del data\ui\unit_info\poland\dismounted_ritterbruder_info.tga
del data\ui\unit_info\poland\knights_hospitaller_info.tga
del data\ui\unit_info\poland\knights_of_montesa_info.tga
del data\ui\unit_info\poland\knights_of_santiago_info.tga
del data\ui\unit_info\poland\knights_templar_info.tga
del data\ui\unit_info\poland\ritterbruder_info.tga

del data\ui\units\portugal\#dismounted_km.tga
del data\ui\units\portugal\#dismounted_knights_hospitaller.tga
del data\ui\units\portugal\#dismounted_knights_of_santiago.tga
del data\ui\units\portugal\#dismounted_knights_templar.tga
del data\ui\units\portugal\#dismounted_ritterbruder.tga
del data\ui\units\portugal\#knights_hospitaller.tga
del data\ui\units\portugal\#knights_of_montesa.tga
del data\ui\units\portugal\#knights_of_santiago.tga
del data\ui\units\portugal\#knights_templar.tga
del data\ui\units\portugal\#ritterbruder.tga
del data\ui\unit_info\portugal\dismounted_km_info.tga
del data\ui\unit_info\portugal\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\portugal\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\portugal\dismounted_knights_templar_info.tga
del data\ui\unit_info\portugal\dismounted_ritterbruder_info.tga
del data\ui\unit_info\portugal\knights_hospitaller_info.tga
del data\ui\unit_info\portugal\knights_of_montesa_info.tga
del data\ui\unit_info\portugal\knights_of_santiago_info.tga
del data\ui\unit_info\portugal\knights_templar_info.tga
del data\ui\unit_info\portugal\ritterbruder_info.tga

del data\ui\units\scotland\#dismounted_km.tga
del data\ui\units\scotland\#dismounted_knights_hospitaller.tga
del data\ui\units\scotland\#dismounted_knights_of_santiago.tga
del data\ui\units\scotland\#dismounted_knights_templar.tga
del data\ui\units\scotland\#dismounted_ritterbruder.tga
del data\ui\units\scotland\#knights_hospitaller.tga
del data\ui\units\scotland\#knights_of_montesa.tga
del data\ui\units\scotland\#knights_of_santiago.tga
del data\ui\units\scotland\#knights_templar.tga
del data\ui\units\scotland\#ritterbruder.tga
del data\ui\unit_info\scotland\dismounted_km_info.tga
del data\ui\unit_info\scotland\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\scotland\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\scotland\dismounted_knights_templar_info.tga
del data\ui\unit_info\scotland\dismounted_ritterbruder_info.tga
del data\ui\unit_info\scotland\knights_hospitaller_info.tga
del data\ui\unit_info\scotland\knights_of_montesa_info.tga
del data\ui\unit_info\scotland\knights_of_santiago_info.tga
del data\ui\unit_info\scotland\knights_templar_info.tga
del data\ui\unit_info\scotland\ritterbruder_info.tga

del data\ui\units\sicily\#dismounted_km.tga
del data\ui\units\sicily\#dismounted_knights_hospitaller.tga
del data\ui\units\sicily\#dismounted_knights_of_santiago.tga
del data\ui\units\sicily\#dismounted_knights_templar.tga
del data\ui\units\sicily\#dismounted_ritterbruder.tga
del data\ui\units\sicily\#knights_hospitaller.tga
del data\ui\units\sicily\#knights_of_montesa.tga
del data\ui\units\sicily\#knights_of_santiago.tga
del data\ui\units\sicily\#knights_templar.tga
del data\ui\units\sicily\#ritterbruder.tga
del data\ui\unit_info\sicily\dismounted_km_info.tga
del data\ui\unit_info\sicily\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\sicily\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\sicily\dismounted_knights_templar_info.tga
del data\ui\unit_info\sicily\dismounted_ritterbruder_info.tga
del data\ui\unit_info\sicily\knights_hospitaller_info.tga
del data\ui\unit_info\sicily\knights_of_montesa_info.tga
del data\ui\unit_info\sicily\knights_of_santiago_info.tga
del data\ui\unit_info\sicily\knights_templar_info.tga
del data\ui\unit_info\sicily\ritterbruder_info.tga

del data\ui\units\spain\#dismounted_km.tga
del data\ui\units\spain\#dismounted_knights_hospitaller.tga
del data\ui\units\spain\#dismounted_knights_of_santiago.tga
del data\ui\units\spain\#dismounted_knights_templar.tga
del data\ui\units\spain\#dismounted_ritterbruder.tga
del data\ui\units\spain\#knights_hospitaller.tga
del data\ui\units\spain\#knights_of_montesa.tga
del data\ui\units\spain\#knights_of_santiago.tga
del data\ui\units\spain\#knights_templar.tga
del data\ui\units\spain\#ritterbruder.tga
del data\ui\unit_info\spain\dismounted_km_info.tga
del data\ui\unit_info\spain\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\spain\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\spain\dismounted_knights_templar_info.tga
del data\ui\unit_info\spain\dismounted_ritterbruder_info.tga
del data\ui\unit_info\spain\knights_hospitaller_info.tga
del data\ui\unit_info\spain\knights_of_montesa_info.tga
del data\ui\unit_info\spain\knights_of_santiago_info.tga
del data\ui\unit_info\spain\knights_templar_info.tga
del data\ui\unit_info\spain\ritterbruder_info.tga

del data\ui\units\teutonic_order\#dismounted_km.tga
del data\ui\units\teutonic_order\#dismounted_knights_hospitaller.tga
del data\ui\units\teutonic_order\#dismounted_knights_of_santiago.tga
del data\ui\units\teutonic_order\#dismounted_knights_templar.tga
del data\ui\units\teutonic_order\#knights_hospitaller.tga
del data\ui\units\teutonic_order\#knights_of_montesa.tga
del data\ui\units\teutonic_order\#knights_of_santiago.tga
del data\ui\units\teutonic_order\#knights_templar.tga
del data\ui\unit_info\teutonic_order\dismounted_km_info.tga
del data\ui\unit_info\teutonic_order\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\teutonic_order\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\teutonic_order\dismounted_knights_templar_info.tga
del data\ui\unit_info\teutonic_order\knights_hospitaller_info.tga
del data\ui\unit_info\teutonic_order\knights_of_montesa_info.tga
del data\ui\unit_info\teutonic_order\knights_of_santiago_info.tga
del data\ui\unit_info\teutonic_order\knights_templar_info.tga

del data\ui\units\venice\#dismounted_km.tga
del data\ui\units\venice\#dismounted_knights_hospitaller.tga
del data\ui\units\venice\#dismounted_knights_of_santiago.tga
del data\ui\units\venice\#dismounted_knights_templar.tga
del data\ui\units\venice\#dismounted_ritterbruder.tga
del data\ui\units\venice\#knights_hospitaller.tga
del data\ui\units\venice\#knights_of_montesa.tga
del data\ui\units\venice\#knights_of_santiago.tga
del data\ui\units\venice\#knights_templar.tga
del data\ui\units\venice\#ritterbruder.tga
del data\ui\unit_info\venice\dismounted_km_info.tga
del data\ui\unit_info\venice\dismounted_knights_hospitaller_info.tga
del data\ui\unit_info\venice\dismounted_knights_of_santiago_info.tga
del data\ui\unit_info\venice\dismounted_knights_templar_info.tga
del data\ui\unit_info\venice\dismounted_ritterbruder_info.tga
del data\ui\unit_info\venice\knights_hospitaller_info.tga
del data\ui\unit_info\venice\knights_of_montesa_info.tga
del data\ui\unit_info\venice\knights_of_santiago_info.tga
del data\ui\unit_info\venice\knights_templar_info.tga
del data\ui\unit_info\venice\ritterbruder_info.tga

del data\models_strat\symbol_apachean.cas
del data\models_strat\symbol_ireland.cas
del data\models_strat\textures\#banner_symbol_apachean.tga
del data\models_strat\textures\#banner_symbol_apachean.tga.dds
del data\models_strat\textures\#banner_symbol_aztecs.tga
del data\models_strat\textures\#banner_symbol_aztecs.tga.dds
del data\models_strat\textures\#banner_symbol_carthage_rebel.tga
del data\models_strat\textures\#banner_symbol_carthage_rebel.tga.dds
del data\models_strat\textures\#banner_symbol_kievan_rus.tga
del data\models_strat\textures\#banner_symbol_kievan_rus.tga.dds
del data\models_strat\textures\#banner_symbol_novgorod.tga
del data\models_strat\textures\#banner_symbol_novgorod.tga.dds
del data\models_strat\textures\#banner_symbol_ireland.tga
del data\models_strat\textures\#banner_symbol_ireland.tga.dds
del data\models_strat\textures\#banner_symbol_knights_templar.tga
del data\models_strat\textures\#banner_symbol_knights_templar.tga.dds
del data\models_strat\textures\#banner_symbol_saxons.tga
del data\models_strat\textures\#banner_symbol_saxons.tga.dds
del data\models_strat\textures\ambasador_ireland.tga
del data\models_strat\textures\ambasador_ireland.tga.dds
del data\models_strat\textures\assassin_ireland.tga
del data\models_strat\textures\assassin_ireland.tga.dds
del data\models_strat\textures\assassin_southern_ireland.tga
del data\models_strat\textures\assassin_southern_ireland.tga.dds
del data\models_strat\textures\catholic_bishop_ireland.tga
del data\models_strat\textures\catholic_bishop_ireland.tga.dds
del data\models_strat\textures\catholic_cardinal_ireland.tga
del data\models_strat\textures\catholic_cardinal_ireland.tga.dds
del data\models_strat\textures\catholic_priest_ireland.tga
del data\models_strat\textures\catholic_priest_ireland.tga.dds
del data\models_strat\textures\late_general_ireland_strat.tga
del data\models_strat\textures\late_general_ireland_strat.tga.dds
del data\models_strat\textures\middle_eastern_sultan_novgorod.tga
del data\models_strat\textures\middle_eastern_sultan_novgorod.tga.dds
del data\models_strat\textures\northen_european_merchant_ireland.tga
del data\models_strat\textures\northen_european_merchant_ireland.tga.dds
del data\models_strat\textures\orthodox_bishop_ireland.tga
del data\models_strat\textures\orthodox_bishop_ireland.tga.dds
del data\models_strat\textures\orthodox_patriarch_ireland.tga
del data\models_strat\textures\orthodox_patriarch_ireland.tga.dds
del data\models_strat\textures\orthodox_priest_ireland.tga
del data\models_strat\textures\orthodox_priest_ireland.tga.dds
del data\models_strat\textures\princess_ireland.tga
del data\models_strat\textures\princess_ireland.tga.dds
del data\models_strat\textures\southern_ambassador_ireland.tga
del data\models_strat\textures\southern_ambassador_ireland.tga.dds
del data\models_strat\textures\southern_captain_ireland.tga
del data\models_strat\textures\southern_captain_ireland.tga.dds
del data\models_strat\textures\southern_european_merchant_ireland.tga
del data\models_strat\textures\southern_european_merchant_ireland.tga.dds
del data\models_strat\textures\southern_general_ireland.tga
del data\models_strat\textures\southern_general_ireland.tga.dds
del data\models_strat\textures\spy_ireland.tga
del data\models_strat\textures\spy_ireland.tga.dds
del data\models_strat\textures\spanish_general_spain.tga
del data\models_strat\textures\spanish_general_spain.tga.dds
del data\models_strat\textures\spy_kwarezm.tga
del data\models_strat\textures\spy_kwarezm.tga.dds
del "data\unit_models\attachmentsets\final danish_denmark_diff.dds"
del "data\unit_models\attachmentsets\final asian_timurids_diff.dds"
del "data\unit_models\attachmentsets\final asian_timurids_norm.dds"
del data\unit_models\_generals_and_captains\islamic_captain\textures\islamic_captain_timurids.dds
del data\unit_models\_generals_and_captains\islamic_general\textures\islamic_general_timurids.dds
del data\unit_models\_units\as_lamellar_heavy\textures\as_lamellar_timurids.dds
del data\unit_models\_units\perkunas\en_peasant_padded_teutonic_order.texture
del data\unit_models\_units\banzai\banzai_mount_chariot_britons_lod0_merged_animby_med_elephant_die_forward_2_modified_modified.ms3d
del data\unit_models\_units\banzai\banzai_mount_war_wagon_lod0.ms3d
del data\sounds\events.idx
del data\sounds\events.dat
del data\world\maps\base\map.rwm
del data\campaign\backup\world\maps\base\map.rwm

del data\models_strat\residences\textures\east_eu_minor_stone_walls.tga
del data\models_strat\residences\textures\north_eu_minor_stone_walls.tga
del data\models_strat\residences\textures\south_eu_minor_stone_walls.tga
del data\models_strat\residences\textures\crusader_stone_fort.tga
del data\models_strat\residences\textures\islamic_stone_fort.tga
del data\models_strat\residences\textures\ne_stone_fort.tga

:CHECK
if exist "titanium_data\" (GOTO REPLACE) else (GOTO NOTFOUND)

:CHECK2
CLS
ECHO SS6.4 files detected inside "Titanium_Alpha" folder
ECHO and seem to be complete.
ECHO Do you wish to continue and Install Titanium's files over SS?
ECHO.
ECHO        1 = YES
ECHO        2 = NO (EXIT)
ECHO.

set /p inputChoice=[1,2]?:
if "%inputChoice%"=="1" (GOTO CLEAN) else (GOTO TWO)

:REPLACE
ECHO Titanium campaign and submods installation...
@echo off
rmdir /s /q data\campaign
md data\campaign
xcopy /e /y "titanium_data" "data\"
if not exist "titanium_music\" GOTO STEAM

CLS
ECHO Do you wish to install new music files?
ECHO This will replace Stainless Steel 6.4 main menu music
ECHO.
ECHO        1 = YES (INSTALL MUSIC)
ECHO        2 = NO (FINISH SETUP)
ECHO.

set /p inputChoice=[1,2]?:
if "%inputChoice%"=="1" (GOTO MUSIC) else (GOTO FINISH)

:MUSIC
@echo off
del "data\sounds\music\(Frontend).mp3"
del "data\sounds\music\(Frontend_1)_Long_Road_Ahead.mp3"
del "data\sounds\music\(Frontend_2)_Arcadia.mp3"
del "data\sounds\music\(Frontend_3)_Impending_Boom.mp3"
del "data\sounds\music\(Frontend_4)_Private_Reflection.mp3"
xcopy /e /y "titanium_music" "data\sounds\music\"
rmdir /s /q "titanium_music"

:STEAM
@echo off
if not exist "steam_users\" GOTO FINISH
CLS
ECHO Are you using Steam version of M2TW?
ECHO This add some extra strings.bin files needed to avoid a bug of Steam's M2TW
ECHO.
ECHO        1 = YES (ADD EXTRA strings.bin files)
ECHO        2 = NO (FINISH SETUP)
ECHO.

set /p inputChoice=[1,2]?:
if "%inputChoice%"=="1" (GOTO STEAM2) else (GOTO FINISH)

:STEAM2
@echo off
xcopy /e /y "steam_users\text" "data\campaign\early\"
xcopy /e /y "steam_users\text" "data\campaign\early1139\"

:FINISH
@echo off
md "old_batch"
xcopy /y "TITANIUM_SETUP.bat" "old_batch\"
rmdir /s /q "titanium_data"

CLS
ECHO Titanium installed successfully!
ECHO press any key to remove batch file and exit . . .
pause > nul
del "%~f0"
EXIT 0

:NOTFOUND
CLS
ECHO "titanium_data" folder not found, Titanium submod is probably installed already
ECHO if not, extract the content from the downloaded 7z file again.
ECHO press any key to exit . . .
pause > nul
EXIT 0

:WRONG
CLS
ECHO ERROR! this setup is intended for "Titanium_Alpha" mod folder only
ECHO press any key to exit . . .
pause > nul
EXIT 0

:WRONG2
CLS
ECHO ERROR! SS6.4 mod folder "SS6.3" does not exists or data is missing
ECHO press any key to check if Stainless Steel files are in "Titanium_Alpha"
pause > nul
IF NOT EXIST "Titanium_Alpha\SS_setup.exe" (GOTO WRONG3)
IF NOT EXIST "Titanium_Alpha\SS_launcher.exe" (GOTO WRONG3)
IF NOT EXIST "Titanium_Alpha\data\unit_models" (GOTO WRONG3)
IF NOT EXIST "Titanium_Alpha\data\campaign\sub\" (GOTO WRONG3)
IF NOT EXIST "Titanium_Alpha\data\campaign\late\campaign.txt" (GOTO WRONG3)
IF NOT EXIST "Titanium_Alpha\data\campaign\early\campaign.txt" (GOTO WRONG3) else (GOTO CHECK2)

:WRONG3
CLS
ECHO Stainless Steel files not found or incomplete
ECHO press any key to exit . . .
pause > nul

:TWO
EXIT 0