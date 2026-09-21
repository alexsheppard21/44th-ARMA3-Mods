// fn_fillCrate_Medical.sqf
// 44th Medical Supplies
private _crate = _this;
waitUntil { time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Items - KAT supplies
_crate addItemCargoGlobal ["kat_oxygenTank_150",    2];
_crate addItemCargoGlobal ["kat_oxygenTank_300",    2];
_crate addItemCargoGlobal ["kat_Bubble_Wrap",       15];
_crate addItemCargoGlobal ["KAT_Eyewasher",         15];
_crate addItemCargoGlobal ["kat_Carbonate",         15];
_crate addItemCargoGlobal ["kat_Painkiller",        15];
_crate addItemCargoGlobal ["kat_Caffeine",          15];

// Items - ACE medical
_crate addItemCargoGlobal ["kat_larynx",            15];
_crate addItemCargoGlobal ["kat_chestSeal",         40];
_crate addItemCargoGlobal ["kat_aatKit",            10];
_crate addItemCargoGlobal ["kat_IO_FAST",           15];
_crate addItemCargoGlobal ["kat_IV_16",             40];
_crate addItemCargoGlobal ["ACE_packingBandage",    80];
_crate addItemCargoGlobal ["ACE_elasticBandage",    80];
_crate addItemCargoGlobal ["ACE_tourniquet",        30];
_crate addItemCargoGlobal ["ACE_splint",             6];
_crate addItemCargoGlobal ["ACE_morphine",          15];
_crate addItemCargoGlobal ["ACE_adenosine",         30];
_crate addItemCargoGlobal ["ACE_epinephrine",       20];
_crate addItemCargoGlobal ["ACE_plasmaIV",          15];
_crate addItemCargoGlobal ["ACE_plasmaIV_500",      20];
_crate addItemCargoGlobal ["ACE_bodyBag",           10];
_crate addItemCargoGlobal ["ACE_painkillers_Item",   4];
_crate addItemCargoGlobal ["kat_naloxone",          20];
_crate addItemCargoGlobal ["kat_EACA",              25];
_crate addItemCargoGlobal ["kat_TXA",               30];
_crate addItemCargoGlobal ["kat_amiodarone",        10];
_crate addItemCargoGlobal ["kat_ketamine",          10];
_crate addItemCargoGlobal ["kat_fentanyl",          10];
_crate addItemCargoGlobal ["ACE_quikclot",          30];
