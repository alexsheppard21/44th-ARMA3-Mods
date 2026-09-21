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

// Which modpack each faction's items come from. The six BAF factions are dead
// weight on a SciFi night and KMC is dead weight on a BAF night, so a faction is
// only registered when its marker addon is present. Without this the kit crates
// would list kits whose items do not exist and hand out empty loadouts.
private _factionAddon = createHashMapFromArray [
    ["RBN",    "UK3CB_BAF_Equipment_Uniforms"],
    ["RBNSUP", "UK3CB_BAF_Equipment_Uniforms"],
    ["RANGER", "UK3CB_BAF_Equipment_Uniforms"],
    ["SFSG",   "UK3CB_BAF_Equipment_Uniforms"],
    ["SRR",    "UK3CB_BAF_Equipment_Uniforms"],
    ["SAS",    "UK3CB_BAF_Equipment_Uniforms"],
    ["UCNMC",  "TKE_Unit_Groups"]
];

// roleKey -> bool. Public so the crates and any admin tooling can see which
// factions this client actually has the mods for.
FTH_FactionAvailable = createHashMap;
{
    _x params ["_faction", "_addon"];
    FTH_FactionAvailable set [_faction, isClass (configFile >> "CfgPatches" >> _addon)];
} forEach _factionAddon;

// Registers one kit into the library. Used by the data_<FACTION>.sqf fragments.
// Kits whose faction is unavailable are skipped, not registered empty.
private _reg = {
    params ["_key", "_name", "_faction", "_loadout", "_swap"];
    if !(FTH_FactionAvailable getOrDefault [_faction, true]) exitWith {};
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

// SciFi modpack (The Kuiper Engagements) - 44th Detachment, UCN Marine Corp.
#include "data_UCNMC.sqf"

// ── ORBAT class -> role key ───────────────────────────────────────────────
#include "map_orbat.sqf"
