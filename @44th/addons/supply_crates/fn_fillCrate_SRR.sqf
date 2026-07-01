// fn_fillCrate_SRR.sqf
// 44 SRR Supplies
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons

// Magazines
_crate addMagazineCargoGlobal ["MCC_PMAG_556_556_30_MK262", 60];
_crate addMagazineCargoGlobal ["rhs_mag_an_m14_th3", 6];
_crate addMagazineCargoGlobal ["GX_DEPLOYABLE_MAGAZINE_BLACKHORNET_UAV", 6];
_crate addMagazineCargoGlobal ["tsp_breach_block_mag", 6];
_crate addMagazineCargoGlobal ["ACE_Chemlight_HiGreen", 20];
_crate addMagazineCargoGlobal ["ACE_Chemlight_HiRed", 20];
_crate addMagazineCargoGlobal ["ACE_Chemlight_IR", 20];
_crate addMagazineCargoGlobal ["rhs_mag_mk84", 12];
_crate addMagazineCargoGlobal ["BOT_magazine_FPV_AP_TI", 2];
_crate addMagazineCargoGlobal ["BOT_magazine_FPV_AT_TI", 2];
_crate addMagazineCargoGlobal ["MPP_17rnd_9MM_147JHP_G17", 12];
_crate addMagazineCargoGlobal ["MPP_15rnd_9MM_147JHP_G19", 12];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShell", 18];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellGreen", 6];
_crate addMagazineCargoGlobal ["tsp_breach_popper_mag", 12];
_crate addMagazineCargoGlobal ["rhsusf_m112_mag", 6];
_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 6];
_crate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag", 3];
_crate addMagazineCargoGlobal ["rhs_mag_m7a3_cs", 6];
_crate addMagazineCargoGlobal ["GX_DEPLOYABLE_MAGAZINE_RQ11B_UAV", 2];

// Items
_crate addItemCargoGlobal ["crowsew_ctrack", 6];
_crate addItemCargoGlobal ["ACE_bodyBag", 6];
_crate addItemCargoGlobal ["G_Blindfold_01_black_F", 6];
_crate addItemCargoGlobal ["ACE_CableTie", 60];
_crate addItemCargoGlobal ["ACE_ChalkBlack", 1];
_crate addItemCargoGlobal ["ACE_ChalkBlue", 1];
_crate addItemCargoGlobal ["ACE_ChalkGreen", 1];
_crate addItemCargoGlobal ["ACE_ChalkRed", 1];
_crate addItemCargoGlobal ["ACE_ChalkWhite", 3];
_crate addItemCargoGlobal ["ACE_ChalkYellow", 1];
_crate addItemCargoGlobal ["H_EarProtectors_black_F", 6];
_crate addItemCargoGlobal ["kat_gasmaskFilter", 12];
_crate addItemCargoGlobal ["tsp_lockpick", 6];
_crate addItemCargoGlobal ["kat_mask_M04", 6];