/*
    FTH_fnc_fillCrateUCNMC  (spawned from each crate's Extended_InitPost EH)

    Fills a UCNMC supply crate from the contents table below, keyed by the
    crate's classname. Every crate is focused on one job - weapons, one kind of
    ammunition, medical, or one specialist role - and kept small, so no single
    crate floods the inventory UI.

    Weapons come with the kits' attachments fitted but no magazine loaded; the
    ammunition is always in its own crate. Every class here is taken from the
    UCNMC kits in Kit Core SciFi (data_UCNMC.sqf), so a crate never hands out
    ammo for a weapon nobody carries. When a kit's weapon changes, update the
    matching entry here too - nothing checks this automatically.

    Entry format:
        [weapons, magazines, items, backpacks]
        weapons   - [[weapon, muzzle, rail, optic, [], [], bipod], count]
        others    - [classname, count]
*/
params ["_crate"];

// Extended_InitPost runs on every machine (and again for each JIP client),
// and the *CargoGlobal commands below are global - fill once, on the server,
// or every client stacks its own copy of the contents into the crate.
if (!isServer) exitWith {};
waitUntil { uiSleep 0.1; time > 0 };

// Kit weapon builds (no magazine loaded - ammunition ships separately).
private _ma32b  = ["OPTRE_MA32B", "OPTRE_MA5Suppressor", "OPTRE_M6C_Flashlight", "OPTRE_M6D_Scope_Black", [], [], ""];
private _ma5k   = ["OPTRE_MA5K", "OPTRE_MA5Suppressor", "OPTRE_M6C_Flashlight", "OPTRE_M6D_Scope_Black", [], [], ""];
private _m45    = ["OPTRE_M45ATAC", "", "OPTRE_M45_Flashlight", "", [], [], ""];
private _m392   = ["OPTRE_M392_DMR", "OPTRE_MA5Suppressor", "OPTRE_M6C_Flashlight", "OPTRE_M393_Scope", [], [], "bipod_02_F_blk"];
private _srs99  = ["OPTRE_SRS99C", "OPTRE_SRS99D_Suppressor", "OPTRE_BMR_Flashlight", "TKE_10xSightV2", [], [], ""];
private _m739   = ["OPTRE_M739_SAW_Black_F", "", "OPTRE_M6C_Flashlight", "OPTRE_M739_SAW_Smartlink", [], [], "bipod_01_F_blk"];
private _m41    = ["OPTRE_M41_SSR", "", "", "", [], [], ""];
private _pistol = ["TKE_UCNPistol", "", "", "", [], [], ""];
private _m7     = ["OPTRE_M7_Folded", "OPTRE_M7_silencer", "OPTRE_M6C_Flashlight", "TKE_ReflexSight", [], [], ""];

private _contents = createHashMapFromArray [

    // ── WEAPONS ──────────────────────────────────────────────────────────
    ["_44th_Crate_Rifles_UCNMC", [
        [[_ma32b, 2], [_ma5k, 2], [_m45, 1]],
        [], [], []
    ]],
    ["_44th_Crate_MarksmanWeapons_UCNMC", [
        [[_m392, 1], [_srs99, 1]],
        [],
        [["ACE_RangeCard", 2], ["ACE_ATragMX", 1], ["ACE_Kestrel4500", 1], ["ACE_SpottingScope", 1]],
        []
    ]],
    ["_44th_Crate_SupportWeapons_UCNMC", [
        [[_m739, 2]],
        [],
        [["ACE_SpareBarrel", 2]],
        []
    ]],
    ["_44th_Crate_Launchers_UCNMC", [
        [[_m41, 2]],
        [], [], []
    ]],
    ["_44th_Crate_Sidearms_UCNMC", [
        [[_pistol, 3], [_m7, 2]],
        [], [], []
    ]],

    // ── AMMUNITION ───────────────────────────────────────────────────────
    // MA32B / MA5K
    ["_44th_Crate_RifleAmmo_UCNMC", [
        [], [["OPTRE_32Rnd_762x51_Mag", 30]], [], []
    ]],
    // M392 DMR / SRS99C
    ["_44th_Crate_MarksmanAmmo_UCNMC", [
        [],
        [["OPTRE_15Rnd_762x51_Mag", 16], ["OPTRE_4Rnd_145x114_HVAP_Mag", 12], ["OPTRE_4Rnd_145x114_APFSDS_Mag", 4]],
        [], []
    ]],
    // M739 SAW
    ["_44th_Crate_SupportAmmo_UCNMC", [
        [], [["OPTRE_M739_SAW_192rnd_Box", 8]], [], []
    ]],
    // M41 SSR
    ["_44th_Crate_LauncherAmmo_UCNMC", [
        [], [["OPTRE_M41_Twin_AI", 4]], [], []
    ]],
    // UCN pistol / M7
    ["_44th_Crate_SidearmAmmo_UCNMC", [
        [], [["TKE_UCNPistol_mag", 16], ["OPTRE_60Rnd_5x23mm_Mag", 8]], [], []
    ]],
    // M45 ATAC (Combat Engineer)
    ["_44th_Crate_ShotgunAmmo_UCNMC", [
        [], [["OPTRE_12Rnd_8Gauge_Pellets", 8], ["OPTRE_12Rnd_8Gauge_Slugs", 6], ["OPTRE_12Rnd_8Gauge_HEDP", 6]], [], []
    ]],
    // TKE ships frag/impact/white smoke only, so coloured smoke is vanilla.
    // bolts_infinite = Diwako's bag of bolts (spares for anyone who loses theirs).
    ["_44th_Crate_Grenades_UCNMC", [
        [],
        [
            ["TKE_FRAG_mag", 12], ["TKE_IMPACT_mag", 4], ["TKE_SMOKE_mag", 16],
            ["SmokeShellRed", 4], ["SmokeShellGreen", 4], ["SmokeShellPurple", 4],
            ["Chemlight_green", 10], ["Chemlight_red", 10], ["ACE_Chemlight_IR", 8],
            ["bolts_infinite", 4]
        ],
        [], []
    ]],

    // ── MEDICAL ──────────────────────────────────────────────────────────
    // Everyday trauma top-up - anyone can use it.
    ["_44th_Crate_MedicalBasic_UCNMC", [
        [], [],
        [
            ["ACE_elasticBandage", 40], ["ACE_packingBandage", 40], ["ACE_quikclot", 20],
            ["ACE_tourniquet", 16], ["kat_chestSeal", 16], ["ACE_splint", 8],
            ["ACE_morphine", 10], ["ACE_epinephrine", 10], ["kat_TXA", 10]
        ],
        []
    ]],
    // Corpsman restock - fluids, airway and drugs.
    ["_44th_Crate_MedicalAdvanced_UCNMC", [
        [], [],
        [
            ["kat_IV_16", 20], ["ACE_plasmaIV_500", 10], ["ACE_plasmaIV", 6],
            ["kat_aatKit", 6], ["kat_IO_FAST", 8], ["kat_larynx", 6],
            ["ACE_adenosine", 10], ["kat_naloxone", 8], ["kat_EACA", 10],
            ["kat_amiodarone", 6], ["kat_ketamine", 6], ["kat_fentanyl", 6],
            ["kat_oxygenTank_150", 2], ["ACE_bodyBag", 6]
        ],
        []
    ]],

    // ── SPECIALIST ───────────────────────────────────────────────────────
    ["_44th_Crate_Engineer_UCNMC", [
        [],
        [["C7_Remote_Mag", 10], ["M168_Remote_Mag", 6]],
        [
            ["ACE_Clacker", 4], ["ACE_DefusalKit", 2], ["Toolkit", 2],
            ["ACE_EntrenchingTool", 2], ["ACE_VMM3", 1]
        ],
        []
    ]],
    ["_44th_Crate_Mines_UCNMC", [
        [],
        [
            ["ATMine_Range_Mag", 4], ["SLAMDirectionalMine_Wire_Mag", 2],
            ["APERSBoundingMine_Range_Mag", 4], ["APERSMine_Range_Mag", 3],
            ["APERSMineDispenser_Range_Mag", 2], ["IEDLandmine_Remote_Mag", 3]
        ],
        [["ACE_Clacker", 2]],
        []
    ]],
    ["_44th_Crate_Command_UCNMC", [
        [["Binocular", 2]],
        [],
        [
            ["ItemAndroid", 4], ["ItemMicroDAGR", 4], ["ACE_MapTools", 4],
            ["acex_intelitems_notepad", 4], ["ACE_Kestrel4500", 1], ["ACE_IR_Strobe_Item", 6]
        ],
        [["TKE_RadioPackUCN", 2]]
    ]],
    ["_44th_Crate_Equipment_UCNMC", [
        [],
        [],
        [
            ["ACE_CableTie", 20], ["ACE_EarPlugs", 6], ["ACE_Flashlight_XL50", 4],
            ["ACE_EntrenchingTool", 2], ["tsp_sling", 4], ["AnomalyDetector", 4]
        ],
        [["TKE_LightPackUCN", 2], ["TKE_RuckSackUCMR", 2], ["TKE_AlicePackUCNM_Med", 1]]
    ]]
];

private _entry = _contents getOrDefault [typeOf _crate, []];
if (_entry isEqualTo []) exitWith {
    diag_log format ["FTH fillCrateUCNMC: no contents defined for %1", typeOf _crate];
};
_entry params ["_weapons", "_magazines", "_items", "_backpacks"];

clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

{
    // Binoculars and other plain weapons go in as-is; full builds with attachments.
    _x params ["_w", "_n"];
    if (_w isEqualType "") then {
        _crate addWeaponCargoGlobal [_w, _n];
    } else {
        _crate addWeaponWithAttachmentsCargoGlobal [_w, _n];
    };
} forEach _weapons;
{ _crate addMagazineCargoGlobal _x } forEach _magazines;
{ _crate addItemCargoGlobal _x } forEach _items;
{ _crate addBackpackCargoGlobal _x } forEach _backpacks;
