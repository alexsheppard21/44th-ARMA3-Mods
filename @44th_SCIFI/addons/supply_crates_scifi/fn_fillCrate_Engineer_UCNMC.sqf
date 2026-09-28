// fn_fillCrate_Engineer_UCNMC.sqf
// 44 UCNMC Engineer/Breaching Supplies
private _crate = _this;
waitUntil { uiSleep 0.1; time > 0 };

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

// Magazines - Free explosives and mines
_crate addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",                   4];
_crate addMagazineCargoGlobal ["IEDLandmine_Remote_Mag",                        5];
_crate addMagazineCargoGlobal ["APERSMine_Range_Mag",                           3];
_crate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",                  2];
_crate addMagazineCargoGlobal ["M168_Remote_Mag",                              15];
_crate addMagazineCargoGlobal ["C7_Remote_Mag",                                15];
_crate addMagazineCargoGlobal ["ATMine_Range_Mag",                              4];
_crate addMagazineCargoGlobal ["APERSMineDispenser_Range_Mag",                  4];
// M45 ATAC 8-gauge (Sapper) - HEDP for breaching
_crate addMagazineCargoGlobal ["OPTRE_12Rnd_8Gauge_Pellets",                    8];
_crate addMagazineCargoGlobal ["OPTRE_12Rnd_8Gauge_Slugs",                      6];
_crate addMagazineCargoGlobal ["OPTRE_12Rnd_8Gauge_HEDP",                       8];
// Self-defence and screening
_crate addMagazineCargoGlobal ["OPTRE_60Rnd_5x23mm_Mag",                        6];
_crate addMagazineCargoGlobal ["TKE_SMOKE_mag",                                 6];
_crate addMagazineCargoGlobal ["ACE_Chemlight_IR",                              4];

// Items
_crate addItemCargoGlobal ["ACE_Clacker",            6];
_crate addItemCargoGlobal ["ACE_EarPlugs",           4];
_crate addItemCargoGlobal ["ACE_MapTools",           2];
_crate addItemCargoGlobal ["ACE_elasticBandage",    20];
_crate addItemCargoGlobal ["ACE_packingBandage",    20];
_crate addItemCargoGlobal ["ACE_tourniquet",         6];
_crate addItemCargoGlobal ["Toolkit",                2];
_crate addItemCargoGlobal ["ACE_EntrenchingTool",    2];
_crate addItemCargoGlobal ["ACE_VMM3",               1];

// Backpacks
_crate addBackpackCargoGlobal ["TKE_ReconPackUCMR", 2];
