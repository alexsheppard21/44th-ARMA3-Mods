// fn_fillCrate_Section_UCNMC.sqf
// 44 UCNMC 8-Man Section Supplies
//
// Sized for one section (two 4-man fireteams: Lance Lead, Marksman, Heavy,
// Corpsman / Fireteam Lead, Marksman, Heavy, Corpsman). Every class here comes
// from the UCNMC kits in Kit Core, so crate and kit can't drift apart.
private _crate = _this;
waitUntil { uiSleep 0.1; time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons - one spare of each rifle the section carries
_crate addWeaponCargoGlobal ["TKE_UCNBPRifle_Optic",  1];
_crate addWeaponCargoGlobal ["TKE_UCNRifle_Optic",    1];
_crate addWeaponCargoGlobal ["TKE_UCNPistol",         2];

// Magazines - BPR 5.75 (riflemen/corpsmen)
_crate addMagazineCargoGlobal ["TKE_30rnd_575x45_magTR",    24];
_crate addMagazineCargoGlobal ["TKE_30rnd_575x45_magAP",     8];
// ARB 7.62 (NCOs)
_crate addMagazineCargoGlobal ["TKE_25rnd_762x51_mag",      20];
_crate addMagazineCargoGlobal ["TKE_25rnd_762x51_magAP",     6];
// M-ARB 9.69 (marksmen)
_crate addMagazineCargoGlobal ["TKE_20rnd_969x51_magUCN",   12];
_crate addMagazineCargoGlobal ["TKE_20rnd_969x51_magUCNAP",  6];
// SAW-ARB 6.2 (heavies)
_crate addMagazineCargoGlobal ["TKE_150rnd_62x35_magUCN",    8];
_crate addMagazineCargoGlobal ["TKE_150rnd_62x35_magUCNAP",  4];
// Sidearm
_crate addMagazineCargoGlobal ["TKE_UCNPistol_mag",         12];

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
_crate addBackpackCargoGlobal ["TKE_CamelBakV2UCN", 2];
