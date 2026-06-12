// fn_fillCrate_SniperAmmo_RBN.sqf
// 44 RBN Sniper & Spotter Ammo
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Magazines only - ammo resupply crate
_crate addMagazineCargoGlobal ["UK3CB_BAF_762_L42A1_20Rnd",     8];
_crate addMagazineCargoGlobal ["MSS_10rnd_50_AMAX",             2];
_crate addMagazineCargoGlobal ["MSS_10rnd_50_M33_Ball",         1];
_crate addMagazineCargoGlobal ["MSS_10rnd_50_Mk211_Mod0",       3];
_crate addMagazineCargoGlobal ["P_UKSF_Mag_BLK_10Rnd_338",    10];
