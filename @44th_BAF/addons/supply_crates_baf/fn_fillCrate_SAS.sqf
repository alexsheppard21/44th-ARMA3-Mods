// fn_fillCrate_SAS.sqf
// 44 SAS Supplies
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons

// Magazines
_crate addMagazineCargoGlobal ["MCC_PMAG_556_556_30_MK262",          36];
_crate addMagazineCargoGlobal ["Louetta_556x45_IRTM_PMAG_40",        12];
_crate addMagazineCargoGlobal ["MSS_20rnd_AR10_MP_65CM_140ELDM",    12];
_crate addMagazineCargoGlobal ["MPP_15rnd_9MM_147JHP_G19",           15];
_crate addMagazineCargoGlobal ["rhs_mag_an_m14_th3",                  2];
_crate addMagazineCargoGlobal ["rhs_mag_m67",                         8];
_crate addMagazineCargoGlobal ["rhs_mag_m7a3_cs",                     3];
_crate addMagazineCargoGlobal ["rhs_mag_mk3a2",                       4];
_crate addMagazineCargoGlobal ["rhs_mag_mk84",                       16];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellYellow",          2];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShell",               12];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellGreen",           2];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellRed",             2];
_crate addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellBlue",            2];
_crate addMagazineCargoGlobal ["GX_DEPLOYABLE_MAGAZINE_BLACKHORNET_UAV", 2];
_crate addMagazineCargoGlobal ["BOT_magazine_FPV_AP_TI",              2];
_crate addMagazineCargoGlobal ["BOT_magazine_FPV_AT_TI",              2];
_crate addMagazineCargoGlobal ["tsp_breach_block_mag",                8];
_crate addMagazineCargoGlobal ["rhsusf_m112_mag",                     4];
_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",   2];
_crate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",         2];
_crate addMagazineCargoGlobal ["tsp_breach_silhouette_mag",           2];
_crate addMagazineCargoGlobal ["tsp_breach_stick_mag",                6];

// Items
_crate addItemCargoGlobal ["ACE_ATragMX",              1];
_crate addItemCargoGlobal ["ACE_bodyBag",             10];
_crate addItemCargoGlobal ["ACE_CableTie",            50];
_crate addItemCargoGlobal ["ACE_ChalkBlue",            1];
_crate addItemCargoGlobal ["ACE_ChalkRed",             1];
_crate addItemCargoGlobal ["ACE_ChalkWhite",           1];
_crate addItemCargoGlobal ["kat_gasmaskFilter",        5];
_crate addItemCargoGlobal ["iedd_item_notebook",       1];
_crate addItemCargoGlobal ["ACE_IR_Strobe_Item",       1];
_crate addItemCargoGlobal ["ACE_Kestrel4500",          1];
_crate addItemCargoGlobal ["tsp_lockpick",             2];
_crate addItemCargoGlobal ["ACE_Clacker",              1];
_crate addItemCargoGlobal ["ACE_Flashlight_XL50",      1];
_crate addItemCargoGlobal ["ACE_MapTools",             1];
_crate addItemCargoGlobal ["acex_intelitems_notepad",  1];
_crate addItemCargoGlobal ["ACE_PlottingBoard",        1];
_crate addItemCargoGlobal ["ACE_RangeCard",            1];
_crate addItemCargoGlobal ["tsp_breach_shock",         2];
_crate addItemCargoGlobal ["ACE_SpraypaintBlue",       1];
_crate addItemCargoGlobal ["ACE_SpraypaintRed",        1];
_crate addItemCargoGlobal ["ACE_SpraypaintWhite",      1];
_crate addItemCargoGlobal ["GX_UAVBattery",            5];