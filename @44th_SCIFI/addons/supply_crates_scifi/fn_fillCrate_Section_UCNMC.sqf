// fn_fillCrate_Section_UCNMC.sqf
// 44 UCNMC 8-Man Section Supplies
//
// Sized for one section (two 4-man fireteams: Lance Lead, Marksman, Heavy,
// Corpsman / Fireteam Lead, Marksman, Heavy, Corpsman). Every class here comes
// from the UCNMC kits in Kit Core SciFi, so crate and kit can't drift apart.
private _crate = _this;
waitUntil { uiSleep 0.1; time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons - one spare of each rifle the section carries
_crate addWeaponCargoGlobal ["OPTRE_MA32B",           1];
_crate addWeaponCargoGlobal ["OPTRE_MA5K",            1];
_crate addWeaponCargoGlobal ["OPTRE_M392_DMR",        1];
_crate addWeaponCargoGlobal ["OPTRE_M739_SAW_Black_F", 1];
_crate addWeaponCargoGlobal ["TKE_UCNPistol",         2];

// Magazines - MA32B / MA5K 7.62 (leads and corpsmen)
_crate addMagazineCargoGlobal ["OPTRE_32Rnd_762x51_Mag",    32];
// M392 DMR 7.62 (marksmen)
_crate addMagazineCargoGlobal ["OPTRE_15Rnd_762x51_Mag",    12];
// M739 SAW (heavies)
_crate addMagazineCargoGlobal ["OPTRE_M739_SAW_192rnd_Box",  6];
// Sidearms - UCN pistol (everyone in this section carries it)
_crate addMagazineCargoGlobal ["TKE_UCNPistol_mag",          8];

// Throwables and signalling. TKE ships frag/impact/smoke only, so coloured
// signal smoke comes from vanilla.
_crate addMagazineCargoGlobal ["TKE_FRAG_mag",              12];
_crate addMagazineCargoGlobal ["TKE_IMPACT_mag",             4];
_crate addMagazineCargoGlobal ["TKE_SMOKE_mag",             16];
_crate addMagazineCargoGlobal ["SmokeShellRed",              2];
_crate addMagazineCargoGlobal ["SmokeShellGreen",            2];
_crate addMagazineCargoGlobal ["SmokeShellPurple",           2];
_crate addMagazineCargoGlobal ["Chemlight_green",           10];
_crate addMagazineCargoGlobal ["Chemlight_red",             10];
_crate addMagazineCargoGlobal ["ACE_Chemlight_IR",           8];

// Items - section-level medical top-up
_crate addItemCargoGlobal ["ACE_elasticBandage",   60];
_crate addItemCargoGlobal ["ACE_packingBandage",   60];
_crate addItemCargoGlobal ["kat_chestSeal",        16];
_crate addItemCargoGlobal ["ACE_tourniquet",       16];
_crate addItemCargoGlobal ["ACE_morphine",         10];
_crate addItemCargoGlobal ["ACE_epinephrine",      10];
_crate addItemCargoGlobal ["kat_TXA",              10];
_crate addItemCargoGlobal ["kat_IV_16",            10];
_crate addItemCargoGlobal ["ACE_splint",            8];

// Items - sundries
_crate addItemCargoGlobal ["ACE_CableTie",         20];
_crate addItemCargoGlobal ["ACE_EarPlugs",          4];
_crate addItemCargoGlobal ["ACE_MapTools",          2];
_crate addItemCargoGlobal ["ACE_IR_Strobe_Item",    4];
_crate addItemCargoGlobal ["ACE_Flashlight_XL50",   4];

// Backpacks
_crate addBackpackCargoGlobal ["TKE_LightPackUCN",  2];
_crate addBackpackCargoGlobal ["TKE_RuckSackUCMR",  2];
