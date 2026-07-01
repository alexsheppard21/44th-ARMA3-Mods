// fn_fillCrate_EOD_RBN.sqf
// 44 RBN EOD/Breaching Supplies
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Magazines / Explosives
_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",     4];
_crate addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",               5];
_crate addMagazineCargoGlobal ["tsp_flashbang_cts2",                    12];
_crate addMagazineCargoGlobal ["rhsusf_m112_mag",                       15];
_crate addMagazineCargoGlobal ["tsp_breach_block_mag",                  10];
_crate addMagazineCargoGlobal ["tsp_breach_package_mag",                 6];
_crate addMagazineCargoGlobal ["tsp_breach_popper_mag",                 15];
_crate addMagazineCargoGlobal ["tsp_breach_silhouette_mag",              4];
_crate addMagazineCargoGlobal ["tsp_breach_stick_mag",                  10];
_crate addMagazineCargoGlobal ["rhsusf_8Rnd_00Buck",                     6];
_crate addMagazineCargoGlobal ["rhsusf_8Rnd_Slug",                       3];
_crate addMagazineCargoGlobal ["ATMine_Range_Mag",                       4];
_crate addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",            8];
_crate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",           4];
_crate addMagazineCargoGlobal ["rhs_mine_M19_mag",                       4];
_crate addMagazineCargoGlobal ["CTB_OBS_Personal_Mag",                   1];

// Items
_crate addItemCargoGlobal ["ACE_Clacker",       4];
_crate addItemCargoGlobal ["tsp_breach_shock",  2];
