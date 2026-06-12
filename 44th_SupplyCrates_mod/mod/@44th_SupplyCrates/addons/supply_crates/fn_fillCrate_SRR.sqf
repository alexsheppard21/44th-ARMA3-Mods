// fn_fillCrate_SRR.sqf
// 44 SRR Supplies
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["Mss_M107A1_50_29_BLK",   1];

// Magazines
_crate addMagazineCargoGlobal ["MSS_10rnd_50_AMAX",                     3];
_crate addMagazineCargoGlobal ["MSS_10rnd_50_M33_Ball",                 4];
_crate addMagazineCargoGlobal ["MSS_10rnd_50_Mk211_Mod0",               3];
_crate addMagazineCargoGlobal ["MCC_PMAG_556_556_30_MK262_NAS3",       20];
_crate addMagazineCargoGlobal ["MSS_20rnd_AR10_MP_65CM_147ELDM_FDE",    4];
_crate addMagazineCargoGlobal ["MSS_10rnd_338NM_300ATIP_AXSR",          6];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShell",                 10];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellGreen",             5];
_crate addMagazineCargoGlobal ["ACE_Chemlight_HiRed",                  20];
_crate addMagazineCargoGlobal ["ACE_Chemlight_HiGreen",                20];
_crate addMagazineCargoGlobal ["ACE_Chemlight_IR",                     20];
_crate addMagazineCargoGlobal ["GX_DEPLOYABLE_MAGAZINE_BLACKHORNET_UAV", 5];
_crate addMagazineCargoGlobal ["GX_DEPLOYABLE_MAGAZINE_RQ11B_UAV",      2];
_crate addMagazineCargoGlobal ["rhs_mag_mk84",                         10];
_crate addMagazineCargoGlobal ["rhs_mag_an_m14_th3",                   10];
_crate addMagazineCargoGlobal ["rhs_mag_m7a3_cs",                       6];
_crate addMagazineCargoGlobal ["ACE_CTS9",                             10];
_crate addMagazineCargoGlobal ["MCC_L5AWM_300_30_78LD",                 6];
_crate addMagazineCargoGlobal ["MCC_L5AWM_300_30_220OTMSUB",           16];
_crate addMagazineCargoGlobal ["rhsusf_m112_mag",                       2];
_crate addMagazineCargoGlobal ["tsp_breach_block_mag",                  4];
_crate addMagazineCargoGlobal ["tsp_breach_popper_mag",                 8];
_crate addMagazineCargoGlobal ["tsp_breach_stick_mag",                  4];
_crate addMagazineCargoGlobal ["UK3CB_BAF_762_100Rnd",                  4];
_crate addMagazineCargoGlobal ["MCC_L5AWM_300_30_125OTM",               8];
_crate addMagazineCargoGlobal ["MCC_ICM_6ARC_20RD_GPR",                12];
_crate addMagazineCargoGlobal ["MCC_ICM_6ARC_20RD_ADVAP",               4];
_crate addMagazineCargoGlobal ["MSS_20rnd_AR10_MP_65CM_M1200_FDE",      6];
_crate addMagazineCargoGlobal ["MSS_10rnd_338NM_M1162_AXSR",            4];

// Items
_crate addItemCargoGlobal ["MSS_BARRETT_QDL",                   1];
_crate addItemCargoGlobal ["MSS_SB_PMII_525_BLK_GM_NO_LRF_NO", 1];
_crate addItemCargoGlobal ["MSS_SB_PMII_525_BLK_GM_NO_LRF_NV", 1];
_crate addItemCargoGlobal ["MSS_SB_PMII_525_BLK_GM_NO_LRF_TI", 1];
_crate addItemCargoGlobal ["ACE_CableTie",                     50];
_crate addItemCargoGlobal ["ACE_bodyBag",                       8];
_crate addItemCargoGlobal ["kat_gasmaskFilter",                 5];
_crate addItemCargoGlobal ["H_EarProtectors_black_F",           1];
_crate addItemCargoGlobal ["G_Blindfold_01_black_F",            1];
_crate addItemCargoGlobal ["tsp_lockpick",                      2];
