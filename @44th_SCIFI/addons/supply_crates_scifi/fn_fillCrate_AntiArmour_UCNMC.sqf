// fn_fillCrate_AntiArmour_UCNMC.sqf
// 44 UCNMC Anti-Armour Supplies
//
// Feeds the Heavy / Anti-armour slots: M41 SSR rockets, plus belts for the
// M739 SAW they carry as a primary.
private _crate = _this;
waitUntil { uiSleep 0.1; time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["OPTRE_M41_SSR",      2];
_crate addWeaponCargoGlobal ["ACE_Vector",         1];

// Magazines - M41 SSR (two rockets per pod)
_crate addMagazineCargoGlobal ["OPTRE_M41_Twin_AI",         8];
// Self-defence and screening
_crate addMagazineCargoGlobal ["OPTRE_M739_SAW_192rnd_Box", 4];
_crate addMagazineCargoGlobal ["TKE_UCNPistol_mag",         4];
_crate addMagazineCargoGlobal ["TKE_SMOKE_mag",             6];
_crate addMagazineCargoGlobal ["ACE_Chemlight_IR",          4];

// Items
_crate addItemCargoGlobal ["ACE_EarPlugs",          4];
_crate addItemCargoGlobal ["ACE_MapTools",          2];
_crate addItemCargoGlobal ["ACE_elasticBandage",   20];
_crate addItemCargoGlobal ["ACE_packingBandage",   20];
_crate addItemCargoGlobal ["ACE_tourniquet",        6];

// Backpacks - rounds are heavy, and the launcher needs a number two
_crate addBackpackCargoGlobal ["TKE_BackPack1UCN", 2];
_crate addBackpackCargoGlobal ["TKE_LightPackUCN", 1];
