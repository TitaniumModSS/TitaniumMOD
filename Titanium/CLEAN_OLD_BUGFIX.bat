@echo off
:BEGIN
CLS
ECHO.                 
ECHO          SS CLEAN UP TOOL
ECHO.
ECHO This will remove:
ECHO Some unnecessary files probably left by mistake by SS developers
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
rmdir /s /q data\ui\unit_models
rmdir /s /q data\ui\northern_european\eventpics
rmdir /s /q data\ui\middle_eastern\eventpics
rmdir /s /q data\ui\greek\buildings
rmdir /s /q data\ui\eastern_european\eventpics
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
del data\ui\unit_info\slave\#ee_bodyguard.tga
del data\ui\unit_info\turks\dismounted_mailed_knights_info.tga
del data\ui\unit_info\moors\dismounted_mailed_knights_info.tga
del data\ui\unit_info\egypt\dismounted_mailed_knights_info.tga
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
del data\unit_models\attachmentsets\final danish_denmark_diff.dds
del data\unit_models\attachmentsets\final asian_timurids_diff.dds
del data\unit_models\attachmentsets\final asian_timurids_norm.dds
del data\unit_models\_generals_and_captains\islamic_captain\textures\islamic_captain_timurids.dds
del data\unit_models\_generals_and_captains\islamic_general\textures\islamic_general_timurids.dds
del data\unit_models\_units\as_lamellar_heavy\textures\as_lamellar_timurids.dds
del data\unit_models\_units\banzai\banzai_mount_chariot_britons_lod0_merged_animby_med_elephant_die_forward_2_modified_modified.ms3d
del data\unit_models\_units\banzai\banzai_mount_war_wagon_lod0.ms3d
del data\sounds\events.idx
del data\sounds\events.dat
del data\world\maps\base\map.rwm
del data\campaign\backup\world\maps\base\map.rwm

:TWO
EXIT 0