// fn_fillCrate_AntiArmour_Ranger.sqf
// 44 RANGER Anti-Armour SME
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
_crate addWeaponCargoGlobal ["UK3CB_BAF_NLAW_Launcher",         2];
_crate addWeaponCargoGlobal ["rhs_weap_m72a7",                  2];

// Magazines / Explosives
_crate addMagazineCargoGlobal ["UK3CB_BAF_HandGrenade_Blank",           18];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShell",                  12];
_crate addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",               2];
_crate addMagazineCargoGlobal ["ATMine_Range_Mag",                       6];
_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",     4];
_crate addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",            4];
_crate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",           4];
_crate addMagazineCargoGlobal ["TrainingMine_Mag",                       4];
_crate addMagazineCargoGlobal ["rhsusf_m112_mag",                        6];
_crate addMagazineCargoGlobal ["rhsusf_m112x4_mag",                      2];

// Items
_crate addItemCargoGlobal ["UK3CB_BAF_Javelin_CLU",     1];
_crate addItemCargoGlobal ["ACE_Clacker",               2];
_crate addItemCargoGlobal ["ACE_M26_Clacker",           2];
_crate addItemCargoGlobal ["tsp_breach_shock",          2];
