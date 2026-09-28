// fn_fillCrate_Command_UCNMC.sqf
// 44 UCNMC Command (Bulldog) Supplies
//
// The detachment HQ slot: IC, 2iC/Air and Fires, Corpsman, Signals and Intel.
// Radios, optics and marking kit rather than bulk ammunition.
private _crate = _this;
waitUntil { uiSleep 0.1; time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["ACE_Vector",           2];
_crate addWeaponCargoGlobal ["OPTRE_MA32B",          1];
_crate addWeaponCargoGlobal ["OPTRE_MA5K",           1];

// Magazines - MA32B / MA5K 7.62 (the whole HQ carries it)
_crate addMagazineCargoGlobal ["OPTRE_32Rnd_762x51_Mag",   20];
_crate addMagazineCargoGlobal ["TKE_UCNPistol_mag",         8];
_crate addMagazineCargoGlobal ["TKE_FRAG_mag",              4];
_crate addMagazineCargoGlobal ["TKE_SMOKE_mag",             8];
_crate addMagazineCargoGlobal ["SmokeShellRed",             4];
_crate addMagazineCargoGlobal ["SmokeShellGreen",           4];
_crate addMagazineCargoGlobal ["SmokeShellPurple",          4];
_crate addMagazineCargoGlobal ["Chemlight_green",          10];
_crate addMagazineCargoGlobal ["Chemlight_red",            10];
_crate addMagazineCargoGlobal ["ACE_Chemlight_IR",         10];

// Items - command, navigation and intel
_crate addItemCargoGlobal ["ItemAndroid",          4];
_crate addItemCargoGlobal ["ItemMicroDAGR",        4];
_crate addItemCargoGlobal ["ACE_MapTools",         4];
_crate addItemCargoGlobal ["ACE_RangeCard",        2];
_crate addItemCargoGlobal ["ACE_Kestrel4500",      1];
_crate addItemCargoGlobal ["acex_intelitems_notepad", 4];
_crate addItemCargoGlobal ["ACE_CableTie",        30];
_crate addItemCargoGlobal ["ACE_IR_Strobe_Item",   6];
_crate addItemCargoGlobal ["ACE_Flashlight_XL50",  4];
_crate addItemCargoGlobal ["ACE_EarPlugs",         4];

// Items - HQ medical top-up
_crate addItemCargoGlobal ["ACE_elasticBandage",  30];
_crate addItemCargoGlobal ["ACE_packingBandage",  30];
_crate addItemCargoGlobal ["ACE_tourniquet",       8];
_crate addItemCargoGlobal ["kat_IV_16",            8];
_crate addItemCargoGlobal ["ACE_splint",           4];

// Backpacks - LR nets for anyone the ORBAT puts on one
_crate addBackpackCargoGlobal ["TKE_RadioPackUCN",   6];
