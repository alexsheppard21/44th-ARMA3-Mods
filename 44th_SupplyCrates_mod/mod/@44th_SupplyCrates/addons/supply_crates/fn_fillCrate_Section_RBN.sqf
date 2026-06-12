// fn_fillCrate_Section_RBN.sqf
// 44 RBN 8-Man Section Supplies
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["UK3CB_BAF_L85A2_RIS_LDSR2D_IR",  1];
_crate addWeaponCargoGlobal ["UK3CB_BAF_NLAW_Launcher",         2];

// Magazines
_crate addMagazineCargoGlobal ["UK3CB_BAF_556_30Rnd",                       48];
_crate addMagazineCargoGlobal ["UK3CB_BAF_762_L42A1_20Rnd",                 10];
_crate addMagazineCargoGlobal ["UK3CB_BAF_762_100Rnd",                       8];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShell",                      12];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellRed",                    6];
_crate addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_HEDP_Grenade_Shell",         12];
_crate addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_Smoke_Grenade_shell",         6];
_crate addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell",      3];
_crate addMagazineCargoGlobal ["P_UKSF_Mag_17rnd_9MM_FMJ_G17",             16];
_crate addMagazineCargoGlobal ["Chemlight_green",                           20];
_crate addMagazineCargoGlobal ["Chemlight_red",                             20];
_crate addMagazineCargoGlobal ["rhs_mag_m67",                               16];
_crate addMagazineCargoGlobal ["UGL_FlareWhite_F",                           3];

// Items
_crate addItemCargoGlobal ["ACE_EntrenchingTool",    2];
_crate addItemCargoGlobal ["ACE_CableTie",          50];
