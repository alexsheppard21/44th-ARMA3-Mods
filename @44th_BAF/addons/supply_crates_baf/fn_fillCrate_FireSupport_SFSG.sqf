// fn_fillCrate_FireSupport_SFSG.sqf
// 44 SFSG Fire Support Supplies
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons / Launchers
_crate addWeaponCargoGlobal ["UK3CB_BAF_Javelin_Slung_Tube",    2];
_crate addWeaponCargoGlobal ["UK3CB_BAF_AT4_CS_AT_Launcher",    2];
_crate addWeaponCargoGlobal ["UK3CB_BAF_AT4_CS_AP_Launcher",    2];
_crate addWeaponCargoGlobal ["UK3CB_BAF_NLAW_Launcher",         4];
_crate addWeaponCargoGlobal ["rhs_weap_maaws_optic",            1];
_crate addWeaponCargoGlobal ["law_starstreak2_lta_olive",       2];
_crate addWeaponCargoGlobal ["rhs_weap_m72a7",                  2];

// Magazines / Explosives
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShell",                  15];
_crate addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",               2];
_crate addMagazineCargoGlobal ["ATMine_Range_Mag",                       4];
_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",     4];
_crate addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",            4];
_crate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",           4];
_crate addMagazineCargoGlobal ["rhsusf_m112_mag",                       12];
_crate addMagazineCargoGlobal ["rhsusf_m112x4_mag",                      3];
_crate addMagazineCargoGlobal ["rhs_mag_maaws_HEAT",                     2];
_crate addMagazineCargoGlobal ["rhs_mag_maaws_HEDP",                     4];
_crate addMagazineCargoGlobal ["rhs_mag_maaws_HE",                       4];
_crate addMagazineCargoGlobal ["CTB_OBS_Personal_Mag",                   2];

// Items
_crate addItemCargoGlobal ["UK3CB_BAF_Javelin_CLU",         1];
_crate addItemCargoGlobal ["ACE_Clacker",                   2];
_crate addItemCargoGlobal ["ACE_M26_Clacker",               2];
_crate addItemCargoGlobal ["tsp_breach_shock",              2];
_crate addItemCargoGlobal ["law_starstreak2_cluItem_olive", 1];
