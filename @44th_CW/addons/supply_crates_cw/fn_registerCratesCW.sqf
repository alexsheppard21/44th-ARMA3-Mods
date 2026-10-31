/*
    FTH_fnc_registerCratesCW  (preInit)

    Supply-crate catalogue for the Cold War half of the framework. Hands its
    categories to the shared logistics engine (@44th / 44th_Logistics), which
    builds the "Request Supplies" menu at postInit.

    Crates are split by job - weapons, ammunition, medical, specialist - so each
    one is small and players only pull the crate they actually need. All three
    companies share one catalogue: they carry the same weapons.
*/
if (isNil "FTH_fnc_logisticsRegister") exitWith {};

["CW_WPN", "CW Weapons", [
    "_44th_Crate_Rifles_CW",
    "_44th_Crate_LMG_CW",
    "_44th_Crate_GPMG_CW",
    "_44th_Crate_Launchers_CW",
    "_44th_Crate_Mortar_CW",
    "_44th_Crate_Sidearms_CW"
], "_44th_LogisticsPoint_CW"] call FTH_fnc_logisticsRegister;

["CW_AMMO", "CW Ammunition", [
    "_44th_Crate_RifleAmmo_CW",
    "_44th_Crate_LMGAmmo_CW",
    "_44th_Crate_GPMGAmmo_CW",
    "_44th_Crate_CarlGustavAmmo_CW",
    "_44th_Crate_MortarAmmo_CW",
    "_44th_Crate_SidearmAmmo_CW",
    "_44th_Crate_Grenades_CW"
]] call FTH_fnc_logisticsRegister;

["MED_CW", "CW Medical", [
    "_44th_Crate_MedicalBasic_CW",
    "_44th_Crate_MedicalAdvanced_CW"
]] call FTH_fnc_logisticsRegister;

["CW_SPEC", "CW Specialist", [
    "_44th_Crate_Engineer_CW",
    "_44th_Crate_Command_CW",
    "_44th_Crate_Equipment_CW",
    "_44th_Crate_FlarePistols_CW"
]] call FTH_fnc_logisticsRegister;
