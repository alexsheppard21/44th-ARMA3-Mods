/*
    FTH_fnc_initKits  (preInit)

    Builds the shared loadout library and the ORBAT class -> role-key map, once,
    before anything spawns. This is the SINGLE SOURCE OF TRUTH consumed by:
      - 44th ORBAT      (spawn kitting, via FTH_fnc_applyKit)
      - 44th Kit Crates (Wbk_AddKit registration + master-crate filtering)

    FTH_Kits          : HashMap  roleKey -> [displayName, faction, loadout, allowedSwap]
    FTH_RoleForClass  : HashMap  lower-case ORBAT classname -> roleKey
*/
if (!isNil "FTH_Kits") exitWith {};

FTH_Kits = createHashMap;
FTH_RoleForClass = createHashMap;

// Registers one kit into the library. Used by the data_<FACTION>.sqf fragments.
private _reg = {
    params ["_key", "_name", "_faction", "_loadout", "_swap"];
    FTH_Kits set [_key, [_name, _faction, _loadout, _swap]];
};

// Maps one or more ORBAT classnames onto a role key. Used by map_orbat.sqf.
private _map = {
    params ["_key", "_classes"];
    { FTH_RoleForClass set [toLower _x, _key] } forEach _classes;
};

// ── Loadout library (auto-generated fragments) ────────────────────────────
#include "data_RBN.sqf"
#include "data_RBNSUP.sqf"
#include "data_RANGER.sqf"
#include "data_SFSG.sqf"
#include "data_SRR.sqf"
#include "data_SAS.sqf"

// ── ORBAT class -> role key ───────────────────────────────────────────────
#include "map_orbat.sqf"
