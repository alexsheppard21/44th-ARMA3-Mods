// fn_fillCrate_Precision_UCNMC.sqf
// 44 UCNMC Precision Supplies
//
// Romeo's sniper/spotter pair and the section marksmen. The UCN sniper rifle is
// built on the vanilla GM6, so it takes vanilla 12.7 rounds.
private _crate = _this;
waitUntil { uiSleep 0.1; time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["TKE_UCNSniper_R_Optic", 1];
_crate addWeaponCargoGlobal ["TKE_UCNDMR_Optic",      1];
_crate addWeaponCargoGlobal ["ACE_Vector",            1];
_crate addWeaponCargoGlobal ["ACE_Yardage450",        1];

// Magazines - 12.7 sniper
_crate addMagazineCargoGlobal ["5Rnd_127x108_Mag",         20];
_crate addMagazineCargoGlobal ["5Rnd_127x108_APDS_Mag",    12];
// M-ARB 9.69 marksman
_crate addMagazineCargoGlobal ["TKE_20rnd_969x51_magUCN",  12];
_crate addMagazineCargoGlobal ["TKE_20rnd_969x51_magUCNAP", 8];
// Sidearm and screening
_crate addMagazineCargoGlobal ["TKE_UCNPistol_mag",         6];
_crate addMagazineCargoGlobal ["TKE_SMOKE_mag",             4];
_crate addMagazineCargoGlobal ["ACE_Chemlight_IR",          4];

// Items - shooter's kit
_crate addItemCargoGlobal ["ACE_ATragMX",          2];
_crate addItemCargoGlobal ["ACE_Kestrel4500",      2];
_crate addItemCargoGlobal ["ACE_RangeCard",        2];
_crate addItemCargoGlobal ["ACE_SpottingScope",    1];
_crate addItemCargoGlobal ["ACE_MapTools",         2];
_crate addItemCargoGlobal ["ACE_IR_Strobe_Item",   4];
_crate addItemCargoGlobal ["ACE_elasticBandage",  20];
_crate addItemCargoGlobal ["ACE_packingBandage",  20];
_crate addItemCargoGlobal ["ACE_tourniquet",       6];

// Backpacks
_crate addBackpackCargoGlobal ["TKE_Pattern83",   2];
