// fn_fillCrate_Section_Ranger.sqf
// 44 RANGER 11-Man Section Supplies
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["rhs_weap_m32_usmc",  1];

// Magazines
_crate addMagazineCargoGlobal ["P_UKSF_Mag_17rnd_9MM_FMJ_G17",         11];
_crate addMagazineCargoGlobal ["MCC_PMAG_556_556_30_M995",               6];
_crate addMagazineCargoGlobal ["MCC_PMAG_556_556_30_AntiDrone",          5];
_crate addMagazineCargoGlobal ["MCC_PMAG_556_556_30_MK262_NAS3",        10];
_crate addMagazineCargoGlobal ["MCC_PMAG_556_FDE_556_30_M995",           2];
_crate addMagazineCargoGlobal ["MCC_PMAG_556_FDE_556_30_AntiDrone",      3];
_crate addMagazineCargoGlobal ["MCC_PMAG_556_FDE_556_30_MK262_NAS3",     4];
_crate addMagazineCargoGlobal ["rhs_mag_mk84",                           8];
_crate addMagazineCargoGlobal ["rhs_mag_m67",                           12];
_crate addMagazineCargoGlobal ["rhs_mag_an_m14_th3",                     2];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShell",                  15];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellRed",                2];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellGreen",              2];
_crate addMagazineCargoGlobal ["ACE_CTS9",                               4];
_crate addMagazineCargoGlobal ["MCC_PMAG_556_556_30_MK262",             25];
_crate addMagazineCargoGlobal ["MCC_PMAG_556_FDE_556_30_MK262",          8];
_crate addMagazineCargoGlobal ["rhsusf_mag_6Rnd_M441_HE",               1];
_crate addMagazineCargoGlobal ["rhsusf_mag_6Rnd_M433_HEDP",             2];
_crate addMagazineCargoGlobal ["rhsusf_mag_6Rnd_M397_HET",              1];
_crate addMagazineCargoGlobal ["rhsusf_mag_6Rnd_m4009",                 1];
_crate addMagazineCargoGlobal ["rhsusf_mag_6Rnd_M714_white",            2];
_crate addMagazineCargoGlobal ["ACE_Chemlight_HiRed",                  20];
_crate addMagazineCargoGlobal ["ACE_Chemlight_HiGreen",                20];
_crate addMagazineCargoGlobal ["ACE_Chemlight_IR",                     10];

// Items
_crate addItemCargoGlobal ["ACE_CableTie",      50];
_crate addItemCargoGlobal ["GX_UAVBattery",      6];
