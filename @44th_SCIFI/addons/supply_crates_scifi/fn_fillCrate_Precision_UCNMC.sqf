// fn_fillCrate_Precision_UCNMC.sqf
// 44 UCNMC Precision Supplies
//
// Romeo's sniper/spotter pair and the section marksmen: SRS99C 14.5mm, M392
// DMR 7.62 (plus the Commando swap option), and the M7 sidearm the sniper
// carries.
private _crate = _this;
waitUntil { uiSleep 0.1; time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["OPTRE_SRS99C",          1];
_crate addWeaponCargoGlobal ["OPTRE_M392_DMR",        1];
_crate addWeaponCargoGlobal ["OPTRE_Commando",        1];
_crate addWeaponCargoGlobal ["ACE_Vector",            1];
_crate addWeaponCargoGlobal ["ACE_Yardage450",        1];

// Magazines - SRS99C 14.5mm sniper
_crate addMagazineCargoGlobal ["OPTRE_4Rnd_145x114_HVAP_Mag", 16];
_crate addMagazineCargoGlobal ["OPTRE_4Rnd_145x114_APFSDS_Mag",    8];
// M392 DMR 7.62 marksman
_crate addMagazineCargoGlobal ["OPTRE_15Rnd_762x51_Mag",      16];
// Commando 6.5mm (marksman/spotter swap option)
_crate addMagazineCargoGlobal ["Commando_20Rnd_65_Mag",        8];
// Sidearms and screening
_crate addMagazineCargoGlobal ["OPTRE_60Rnd_5x23mm_Mag",       4];
_crate addMagazineCargoGlobal ["TKE_UCNPistol_mag",            4];
_crate addMagazineCargoGlobal ["TKE_SMOKE_mag",                4];
_crate addMagazineCargoGlobal ["ACE_Chemlight_IR",             4];

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
_crate addBackpackCargoGlobal ["TKE_BackPack2UCN", 1];
_crate addBackpackCargoGlobal ["TKE_RuckSack",     2];
