// FTTH_fnc_postInit - runs after all mission init, fills any pre-placed 44th crates
{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_Medical.sqf";
} forEach (allMissionObjects "_44th_Crate_Medical");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_FireSupport_Ranger.sqf";
} forEach (allMissionObjects "_44th_Crate_FireSupport_Ranger");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_Precision_Ranger.sqf";
} forEach (allMissionObjects "_44th_Crate_Precision_Ranger");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_AntiArmour_Ranger.sqf";
} forEach (allMissionObjects "_44th_Crate_AntiArmour_Ranger");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_Section_Ranger.sqf";
} forEach (allMissionObjects "_44th_Crate_Section_Ranger");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_SniperAmmo_RBN.sqf";
} forEach (allMissionObjects "_44th_Crate_SniperAmmo_RBN");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_Section_RBN.sqf";
} forEach (allMissionObjects "_44th_Crate_Section_RBN");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_EOD_RBN.sqf";
} forEach (allMissionObjects "_44th_Crate_EOD_RBN");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_FireSupport_SFSG.sqf";
} forEach (allMissionObjects "_44th_Crate_FireSupport_SFSG");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_Section_SFSG.sqf";
} forEach (allMissionObjects "_44th_Crate_Section_SFSG");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_Precision_SFSG.sqf";
} forEach (allMissionObjects "_44th_Crate_Precision_SFSG");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_SRR.sqf";
} forEach (allMissionObjects "_44th_Crate_SRR");

{
    _x execVM "\44th_SupplyCrates\supply_crates\fn_fillCrate_SAS.sqf";
} forEach (allMissionObjects "_44th_Crate_SAS");
