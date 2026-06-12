// fn_fillCrate_Precision_Ranger.sqf
// 44 RANGER Precision SME
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["P_UKSF_L115A4_GRN",      1];
_crate addWeaponCargoGlobal ["Mss_M107A1_50_29_BLK",   1];

// Magazines
_crate addMagazineCargoGlobal ["P_UKSF_Mag_BLK_10Rnd_338",     8];
_crate addMagazineCargoGlobal ["MSS_10rnd_50_AMAX",             2];
_crate addMagazineCargoGlobal ["MSS_10rnd_50_M33_Ball",         2];
_crate addMagazineCargoGlobal ["MSS_10rnd_50_Mk211_Mod0",       3];

// Items / Attachments / Spotting gear
_crate addItemCargoGlobal ["rhsusf_bino_leopold_mk4",           2];
_crate addItemCargoGlobal ["MSS_Harris_SBRMP",                  1];
_crate addItemCargoGlobal ["MSS_BARRETT_QDL",                   1];
_crate addItemCargoGlobal ["MSS_RS9_Suppressor_BLK",            1];
_crate addItemCargoGlobal ["MSS_RS9_brake",                     1];
_crate addItemCargoGlobal ["MSS_SB_PMII_525_BLK_GM_NO_LRF_NO", 1];
_crate addItemCargoGlobal ["MSS_SB_PMII_525_BLK_GM_NO_LRF_TI", 1];
_crate addItemCargoGlobal ["MSS_SB_PMII_525_BLK_GM_NO_LRF_NV", 1];
_crate addItemCargoGlobal ["ACE_PlottingBoard",                 2];
_crate addItemCargoGlobal ["ACE_SpottingScope",                 2];
_crate addItemCargoGlobal ["ACE_Tripod",                        2];
_crate addItemCargoGlobal ["ACE_Kestrel4500",                   2];
_crate addItemCargoGlobal ["ACE_ATragMX",                       2];
_crate addItemCargoGlobal ["ace_intelitems_notepad_Item",       2];
_crate addItemCargoGlobal ["ACE_RangeCard",                     2];
_crate addItemCargoGlobal ["ItemMap",                           2];
