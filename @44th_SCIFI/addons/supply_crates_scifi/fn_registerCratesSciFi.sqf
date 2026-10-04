/*
    FTH_fnc_registerCratesSciFi  (preInit)

    Supply-crate catalogue for the SciFi half of the framework. Hands its
    categories to the shared logistics engine (@44th / 44th_Logistics), which
    builds the "Request Supplies" menu at postInit.

    Crates are split by job - weapons, ammunition, medical, specialist - so each
    one is small and players only pull the crate they actually need.

    The engine merges categories by id, so if the BAF entry is somehow loaded
    alongside this one, both sets of crates appear under their own headings
    rather than one replacing the other.
*/
if (isNil "FTH_fnc_logisticsRegister") exitWith {};

["UCNMC_WPN", "UCNMC Weapons", [
    "_44th_Crate_Rifles_UCNMC",
    "_44th_Crate_MarksmanWeapons_UCNMC",
    "_44th_Crate_SupportWeapons_UCNMC",
    "_44th_Crate_Launchers_UCNMC",
    "_44th_Crate_Sidearms_UCNMC"
], "_44th_LogisticsPoint_UCNMC"] call FTH_fnc_logisticsRegister;

["UCNMC_AMMO", "UCNMC Ammunition", [
    "_44th_Crate_RifleAmmo_UCNMC",
    "_44th_Crate_MarksmanAmmo_UCNMC",
    "_44th_Crate_SupportAmmo_UCNMC",
    "_44th_Crate_LauncherAmmo_UCNMC",
    "_44th_Crate_SidearmAmmo_UCNMC",
    "_44th_Crate_ShotgunAmmo_UCNMC",
    "_44th_Crate_Grenades_UCNMC"
]] call FTH_fnc_logisticsRegister;

["MED_UCNMC", "UCNMC Medical", [
    "_44th_Crate_MedicalBasic_UCNMC",
    "_44th_Crate_MedicalAdvanced_UCNMC"
]] call FTH_fnc_logisticsRegister;

["UCNMC_SPEC", "UCNMC Specialist", [
    "_44th_Crate_Engineer_UCNMC",
    "_44th_Crate_Mines_UCNMC",
    "_44th_Crate_Command_UCNMC",
    "_44th_Crate_Equipment_UCNMC"
]] call FTH_fnc_logisticsRegister;
