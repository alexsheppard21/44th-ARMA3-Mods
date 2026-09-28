// fn_fillCrate_FireSupport_UCNMC.sqf
// 44 UCNMC Fire Support Supplies
//
// Belt-fed resupply for the Heavy slots: the M739 SAW they spawn with, plus the
// SCS/AW (Cerberus) their kit lets them swap to.
private _crate = _this;
waitUntil { uiSleep 0.1; time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["OPTRE_M739_SAW_Black_F", 1];
_crate addWeaponCargoGlobal ["TKE_UCNMMG_Optic",       1];

// Magazines - M739 SAW 192rnd box
_crate addMagazineCargoGlobal ["OPTRE_M739_SAW_192rnd_Box", 12];
// SCS/AW 100rnd box (swap option)
_crate addMagazineCargoGlobal ["TKE_100rnd_ucnmmg_mag",      6];
_crate addMagazineCargoGlobal ["TKE_100rnd_ucnmmg_magAP",    2];
// Sidearm and screening
_crate addMagazineCargoGlobal ["TKE_UCNPistol_mag",          6];
_crate addMagazineCargoGlobal ["TKE_FRAG_mag",               6];
_crate addMagazineCargoGlobal ["TKE_SMOKE_mag",              8];
_crate addMagazineCargoGlobal ["ACE_Chemlight_IR",           4];

// Items
_crate addItemCargoGlobal ["ACE_SpareBarrel",       2];
_crate addItemCargoGlobal ["ACE_EarPlugs",          4];
_crate addItemCargoGlobal ["ACE_elasticBandage",   20];
_crate addItemCargoGlobal ["ACE_packingBandage",   20];
_crate addItemCargoGlobal ["ACE_tourniquet",        6];

// Backpacks - the ammo has to be carried by someone
_crate addBackpackCargoGlobal ["TKE_RuckSackUCMR", 2];
_crate addBackpackCargoGlobal ["TKE_LightPackUCN", 2];
