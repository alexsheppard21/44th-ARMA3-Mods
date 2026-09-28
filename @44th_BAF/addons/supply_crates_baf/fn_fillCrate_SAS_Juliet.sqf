// fn_fillCrate_SAS_Juliet.sqf
// 44 SAS Juliet Supplies
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons

// Magazines
_crate addMagazineCargoGlobal ["MSS_10rnd_338NM_300ATIP_AXSR", 8];
_crate addMagazineCargoGlobal ["MSS_10rnd_338NM_M1162_AXSR", 4];
_crate addMagazineCargoGlobal ["MSS_20rnd_AR10_MP_65CM_M1200", 10];
_crate addMagazineCargoGlobal ["MSS_20rnd_AR10_MP_65CM_140ELDM", 2];
_crate addMagazineCargoGlobal ["MCC_PMAG_556_556_30_MK262", 12];
_crate addMagazineCargoGlobal ["MPP_15rnd_9MM_147JHP_G19", 9];
_crate addMagazineCargoGlobal ["GX_DEPLOYABLE_MAGAZINE_RQ11B_UAV", 1];
_crate addMagazineCargoGlobal ["GX_DEPLOYABLE_MAGAZINE_BLACKHORNET_UAV", 2];
_crate addMagazineCargoGlobal ["BOT_magazine_FPV_AP_TI", 4];
_crate addMagazineCargoGlobal ["BOT_magazine_FPV_AT_TI", 4];
_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 2];
_crate addMagazineCargoGlobal ["rhs_mag_mk84", 6];
_crate addMagazineCargoGlobal ["rhs_mag_m67", 4];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShell", 6];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellBlue", 2];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellRed", 1];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellGreen", 1];

// Items
_crate addItemCargoGlobal ["GX_UAVBattery", 4];
_crate addItemCargoGlobal ["ACE_SpraypaintBlue", 1];
_crate addItemCargoGlobal ["ACE_ChalkWhite", 2];
_crate addItemCargoGlobal ["kat_gasmaskFilter", 3];
_crate addItemCargoGlobal ["ACE_CableTie", 10];
_crate addItemCargoGlobal ["ACE_RangeCard", 2];
_crate addItemCargoGlobal ["acex_intelitems_notepad", 2];