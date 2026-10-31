/*
    FTH_fnc_fillCrateCW  (spawned from each crate's Extended_InitPost EH)

    Fills a Cold War supply crate from the contents table below, keyed by the
    crate's classname. Every crate is focused on one job - weapons, one kind of
    ammunition, medical, or one specialist role - and kept small, so no single
    crate floods the inventory UI.

    Weapons come with the kits' attachments fitted but no magazine loaded; the
    ammunition is always in its own crate. The LAW 66 is an exception: it is
    single-shot and ships with its round loaded. Every class here is taken from
    the CW kits in Kit Core CW (data_CW*.sqf), so a crate never hands out ammo
    for a weapon nobody carries. When a kit's weapon changes, update the
    matching entry here too - nothing checks this automatically. The Flare
    Pistols crate is the other exception: no kit carries one, it is an optional
    pick-up, so the pistols and their rounds ship together.

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
private _slr    = ["SP_l1a1_slr_wood", "", "", "", [], [], ""];
private _l4     = ["SP_l4_lmg_walnut", "", "", "", [], [], ""];
private _gpmg   = ["sp_l7a1_gpmg", "", "sp_acc_gpmg_linkhide", "", [], [], ""];
private _law    = ["SP_l1a1_law66", "", "", "", ["SP_law66_round", 1], [], ""];
private _carlg  = ["sp_l14a1_carlGustav", "", "", "", [], [], ""];
private _mortar = ["SP_2InchMortar", "", "", "", [], [], ""];
private _l9     = ["sp_l9a1_hipower", "", "", "", [], [], ""];

private _contents = createHashMapFromArray [

    // ── WEAPONS ──────────────────────────────────────────────────────────
    ["_44th_Crate_Rifles_CW", [
        [[_slr, 4]],
        [], [], []
    ]],
    ["_44th_Crate_LMG_CW", [
        [[_l4, 2]],
        [],
        [["ACE_SpareBarrel_Item", 2]],
        []
    ]],
    ["_44th_Crate_GPMG_CW", [
        [[_gpmg, 2]],
        [],
        [["ACE_SpareBarrel_Item", 2]],
        []
    ]],
    ["_44th_Crate_Launchers_CW", [
        [[_law, 4], [_carlg, 1]],
        [], [], []
    ]],
    ["_44th_Crate_Mortar_CW", [
        [[_mortar, 1]],
        [],
        [["ACE_PlottingBoard", 1]],
        []
    ]],
    ["_44th_Crate_Sidearms_CW", [
        [[_l9, 4]],
        [], [], []
    ]],

    // ── AMMUNITION ───────────────────────────────────────────────────────
    ["_44th_Crate_RifleAmmo_CW", [
        [],
        [["SP_20Rnd_762_SLR", 15], ["SP_20Rnd_762_SLR_Tracer", 15]],
        [], []
    ]],
    ["_44th_Crate_LMGAmmo_CW", [
        [],
        [["SP_28Rnd_762_L4", 8], ["SP_28Rnd_762_L4_White", 16]],
        [], []
    ]],
    ["_44th_Crate_GPMGAmmo_CW", [
        [],
        [["sp_200Rnd_762_gpmg", 6], ["sp_100Rnd_762_gpmg", 4]],
        [], []
    ]],
    ["_44th_Crate_CarlGustavAmmo_CW", [
        [],
        // No sp_carlg_1rnd_illum: Spearpoint's round is unfinished and won't load.
        [["sp_carlg_1rnd_heat", 6], ["sp_carlg_1rnd_he", 2], ["sp_carlg_1rnd_wp", 2]],
        [], []
    ]],
    ["_44th_Crate_MortarAmmo_CW", [
        [],
        [
            ["sp_2inch_he_mag", 12], ["sp_2inch_wp_mag", 6], ["sp_2inch_smoke_mag", 6],
            ["sp_2inch_flare_mag", 4], ["sp_2inch_signal_red_mag", 2], ["sp_2inch_signal_green_mag", 2]
        ],
        [], []
    ]],
    ["_44th_Crate_SidearmAmmo_CW", [
        [],
        [["SP_13Rnd_9mm_HiPower", 16]],
        [], []
    ]],
    ["_44th_Crate_Grenades_CW", [
        [],
        [
            ["SP_l2a1_grenade", 16], ["SmokeShell", 8], ["SmokeShellGreen", 6], ["SmokeShellRed", 6],
            ["SP_mk4a_smokeGrenade", 6], ["SP_No83A_smokeGrenade_Green", 4], ["SP_No83A_smokeGrenade_Red", 4],
            ["ACE_HandFlare_Red", 6]
        ],
        [], []
    ]],

    // ── MEDICAL ──────────────────────────────────────────────────────────
    ["_44th_Crate_MedicalBasic_CW", [
        [],
        [],
        [
            ["ACE_elasticBandage", 40], ["ACE_tourniquet", 12], ["ACE_splint", 8], ["kat_chestSeal", 12],
            ["ACE_morphine", 12], ["ACE_epinephrine", 8], ["kat_IV_16", 8], ["ACE_plasmaIV_500", 6],
            ["kat_larynx", 6]
        ],
        []
    ]],
    // One Medic's bergen, so a section that lost its medic can rebuild one.
    ["_44th_Crate_MedicalAdvanced_CW", [
        [],
        [["kat_oxygenTank_150", 2]],
        [
            ["kat_larynx", 15], ["kat_IV_16", 10], ["kat_IO_FAST", 5], ["ACE_adenosine", 10],
            ["ACE_epinephrine", 10], ["ACE_morphine", 10], ["kat_atropine", 4], ["kat_fentanyl", 2],
            ["kat_ketamine", 2], ["kat_naloxone", 2], ["kat_ncdKit", 4], ["kat_aatKit", 4],
            ["ACE_elasticBandage", 40], ["kat_chestSeal", 10], ["ACE_plasmaIV", 2], ["ACE_plasmaIV_500", 2],
            ["ACE_plasmaIV_250", 4], ["KAT_Empty_bloodIV_500", 1], ["kat_BPCuff", 1], ["kat_BVM", 1],
            ["kat_stethoscope", 1], ["kat_suction", 1], ["kat_AED", 1], ["ACE_surgicalKit", 1],
            ["ACE_bodyBag", 2]
        ],
        []
    ]],

    // ── SPECIALIST ───────────────────────────────────────────────────────
    ["_44th_Crate_Engineer_CW", [
        [["ACE_VMH3", 1]],
        [
            ["DemoCharge_Remote_Mag", 4], ["tsp_breach_block_mag", 4], ["tsp_breach_linear_mag", 2],
            ["tsp_breach_stick_mag", 2]
        ],
        [
            ["ACE_Clacker", 2], ["ACE_DefusalKit", 2], ["ACE_wirecutter", 2], ["tsp_breach_shock", 2],
            ["iedd_item_notebook", 1], ["ToolKit", 1]
        ],
        []
    ]],
    ["_44th_Crate_Command_CW", [
        [["Binocular", 4]],
        [["acex_intelitems_notepad", 4]],
        [["ACE_MapTools", 4], ["ACE_PlottingBoard", 2], ["ACE_ChalkRed", 2], ["TFAR_anprc152", 4]],
        [["TFAR_rt1523g_green", 2]]
    ]],
    // Takes the sidearm slot, so whoever picks one up gives up their L9A1.
    ["_44th_Crate_FlarePistols_CW", [
        [["CUP_hgun_FlareGun", 2]],
        [
            ["CUP_IllumFlareWhite_265_M", 12], ["CUP_IllumFlareRed_265_M", 2], ["CUP_IllumFlareGreen_265_M", 2],
            ["CUP_FlareRed_265_M", 4], ["CUP_FlareGreen_265_M", 4]
        ],
        [], []
    ]],
    ["_44th_Crate_Equipment_CW", [
        [],
        [["cigs_lighter", 4], ["cigs_morley_cigpack", 4]],
        [
            ["ACE_EarPlugs", 8], ["ACE_EHP", 4], ["ACE_EntrenchingTool", 4], ["SP_l1a1_bayonet", 4],
            ["ToolKit", 2]
        ],
        [
            ["sp_webbing_58pattern_LargePack", 4], ["cwr3_b_uk_backpack", 2], ["cwr3_b_uk_backpack_medic", 1],
            ["SP_Backpack_CarlGustavCarrier", 1], ["SP_Backpack_2InchCarrier", 1]
        ]
    ]]
];

private _entry = _contents getOrDefault [typeOf _crate, []];
if (_entry isEqualTo []) exitWith {
    diag_log format ["FTH fillCrateCW: no contents defined for %1", typeOf _crate];
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
