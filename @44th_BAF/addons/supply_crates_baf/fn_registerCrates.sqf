/*
    FTH_fnc_registerCrates  (preInit)

    Supply-crate catalogue for the BAF half of the framework. Hands its
    categories to the shared logistics engine (@44th / 44th_Logistics), which
    builds the "Request Supplies" menu at postInit.

    Crate labels come from each class's configured displayName, so adding a new
    crate is: define it in config.cpp, then add its classname to the right
    category here. Nothing else needs touching.
*/
if (isNil "FTH_fnc_logisticsRegister") exitWith {};

["MED", "Medical", [
    "_44th_Crate_Medical"
], "_44th_LogisticsPoint"] call FTH_fnc_logisticsRegister;

["RANGER", "RANGER", [
    "_44th_Crate_Section_Ranger",
    "_44th_Crate_FireSupport_Ranger",
    "_44th_Crate_Precision_Ranger",
    "_44th_Crate_AntiArmour_Ranger"
]] call FTH_fnc_logisticsRegister;

["RBN", "RBN", [
    "_44th_Crate_Section_RBN",
    "_44th_Crate_SniperAmmo_RBN",
    "_44th_Crate_EOD_RBN"
]] call FTH_fnc_logisticsRegister;

["SFSG", "SFSG", [
    "_44th_Crate_Section_SFSG",
    "_44th_Crate_FireSupport_SFSG",
    "_44th_Crate_Precision_SFSG"
]] call FTH_fnc_logisticsRegister;

["SF", "SRR / SAS", [
    "_44th_Crate_SRR",
    "_44th_Crate_SAS",
    "_44th_Crate_SAS_Juliet"
]] call FTH_fnc_logisticsRegister;
