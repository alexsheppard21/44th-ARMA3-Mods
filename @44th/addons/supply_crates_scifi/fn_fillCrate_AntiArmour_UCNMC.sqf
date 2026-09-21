// fn_fillCrate_AntiArmour_UCNMC.sqf
// 44 UCNMC Anti-Armour Supplies
//
// Feeds the Heavy / Anti-armour slots. The AT-9x is a TKE launcher built on the
// vanilla MRAWS, so it takes vanilla MRAWS rounds - that is the mod's own
// inheritance, not a substitution.
private _crate = _this;
waitUntil { uiSleep 0.1; time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["TKE_ATRecoilless1",  2];
_crate addWeaponCargoGlobal ["ACE_Vector",         1];

// Magazines - AT-9x
_crate addMagazineCargoGlobal ["MRAWS_HEAT_F",              8];
_crate addMagazineCargoGlobal ["MRAWS_HE_F",                6];
// Self-defence and screening
_crate addMagazineCargoGlobal ["TKE_30rnd_575x45_magTR",    8];
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
_crate addBackpackCargoGlobal ["TKE_RuckSack",     2];
_crate addBackpackCargoGlobal ["TKE_LightPackUCN", 1];
