// fn_fillCrate_FireSupport_UCNMC.sqf
// 44 UCNMC Fire Support Supplies
//
// Belt-fed resupply for the Heavy slots: SAW-ARB (Ripper) and SCS/AW (Cerberus).
private _crate = _this;
waitUntil { uiSleep 0.1; time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["TKE_UCNLMG_Optic",  1];
_crate addWeaponCargoGlobal ["TKE_UCNMMG_Optic",  1];

// Magazines - SAW-ARB 6.2
_crate addMagazineCargoGlobal ["TKE_150rnd_62x35_magUCN",   12];
_crate addMagazineCargoGlobal ["TKE_150rnd_62x35_magUCNAP",  6];
// SCS/AW 100rnd box
_crate addMagazineCargoGlobal ["TKE_100rnd_ucnmmg_mag",     10];
_crate addMagazineCargoGlobal ["TKE_100rnd_ucnmmg_magAP",    4];
// Self-defence and screening
_crate addMagazineCargoGlobal ["TKE_30rnd_575x45_magTR",     8];
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
_crate addBackpackCargoGlobal ["TKE_LightPackUCN", 2];
_crate addBackpackCargoGlobal ["TKE_RuckSack",     2];
