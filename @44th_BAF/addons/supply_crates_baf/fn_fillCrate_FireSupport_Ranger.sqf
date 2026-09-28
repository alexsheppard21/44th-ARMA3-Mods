// fn_fillCrate_FireSupport_Ranger.sqf
// 44 RANGER Fire Support SME
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Weapons
_crate addWeaponCargoGlobal ["UK3CB_BAF_L110A3",       1];
_crate addWeaponCargoGlobal ["rhs_weap_m32_usmc",      1];
_crate addWeaponCargoGlobal ["P_UKSF_L7A2",            1];

// Magazines
_crate addMagazineCargoGlobal ["UK3CB_BAF_762_100Rnd",              2];
_crate addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",              2];
_crate addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd_T",            1];
_crate addMagazineCargoGlobal ["UK3CB_BAF_556_100Rnd_T",            1];
_crate addMagazineCargoGlobal ["UK3CB_BAF_556_200Rnd",              4];
_crate addMagazineCargoGlobal ["rhsusf_mag_6Rnd_M441_HE",          2];
_crate addMagazineCargoGlobal ["rhsusf_mag_6Rnd_M433_HEDP",        1];
_crate addMagazineCargoGlobal ["rhsusf_mag_6Rnd_M714_white",       1];
_crate addMagazineCargoGlobal ["rhsusf_mag_6Rnd_M781_Practice",   10];

// Items / Attachments
_crate addItemCargoGlobal ["ACE_Tripod",                2];
_crate addItemCargoGlobal ["UK3CB_BAF_TA648_308",       1];
_crate addItemCargoGlobal ["rhsusf_acc_kac_grip_saw_bipod", 1];
_crate addItemCargoGlobal ["MCC_HuxWrx_Flow_556K",      1];
_crate addItemCargoGlobal ["MCC_EXPS3_BLK",             1];
