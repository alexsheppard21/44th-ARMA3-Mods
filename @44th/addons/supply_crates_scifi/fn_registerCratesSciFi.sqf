/*
    FTH_fnc_registerCratesSciFi  (preInit)

    Supply-crate catalogue for the SciFi half of the framework. Hands its
    categories to the shared logistics engine (@44th / 44th_Logistics), which
    builds the "Request Supplies" menu at postInit.

    The engine merges categories by id, so if the BAF entry is somehow loaded
    alongside this one, both sets of crates appear under their own headings
    rather than one replacing the other.
*/
if (isNil "FTH_fnc_logisticsRegister") exitWith {};

["UCNMC", "UCNMC", [
    "_44th_Crate_Section_UCNMC",
    "_44th_Crate_FireSupport_UCNMC",
    "_44th_Crate_Precision_UCNMC",
    "_44th_Crate_AntiArmour_UCNMC",
    "_44th_Crate_Command_UCNMC"
], "_44th_LogisticsPoint_UCNMC"] call FTH_fnc_logisticsRegister;

["MED_UCNMC", "Medical", [
    "_44th_Crate_Medical_UCNMC"
]] call FTH_fnc_logisticsRegister;
