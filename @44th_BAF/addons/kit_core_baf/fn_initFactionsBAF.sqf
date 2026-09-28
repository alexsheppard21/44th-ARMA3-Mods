/*
    FTH_fnc_initFactionsBAF  (preInit)

    Registers the BAF half of the roster (RBN, RBN Support, RANGER, SFSG,
    SRR, SAS) into the shared Kit Core library. Split out from Kit Core
    itself so the milsim data ships, loads and can be dropped independently
    of the SciFi half: loading only this addon must never pull in TKE or
    OPTRE, and removing it must never disturb the SciFi kits.

    Depends on Kit Core's own preInit (FTH_Kits / FTH_RoleForClass /
    FTH_FactionAvailable / FTH_fnc_registerKit / FTH_fnc_mapOrbatClass /
    FTH_fnc_registerFactionAvailable), guaranteed to have already run because
    this addon's requiredAddons lists KitCore_44th.
*/
#include "script_version.hpp"

if (isNil "FTH_Kits") exitWith {};

// Checked against the server's by Kit Core's fn_versionControl.
FTH_KitVersions set ["BAF", FTH_KIT_VERSION_BAF];

// Which modpack each BAF faction's items come from. A faction is only
// registered when its marker addon is present, so a night without 3CB
// doesn't leave the kit crates listing kits whose items do not exist.
private _factionAddon = createHashMapFromArray [
    ["RBN",    "UK3CB_BAF_Equipment_Uniforms"],
    ["RBNSUP", "UK3CB_BAF_Equipment_Uniforms"],
    ["RANGER", "UK3CB_BAF_Equipment_Uniforms"],
    ["SFSG",   "UK3CB_BAF_Equipment_Uniforms"],
    ["SRR",    "UK3CB_BAF_Equipment_Uniforms"],
    ["SAS",    "UK3CB_BAF_Equipment_Uniforms"]
];
{
    _x params ["_faction", "_addon"];
    [_faction, _addon] call FTH_fnc_registerFactionAvailable;
} forEach _factionAddon;

// Thin forwarders so the data_<FACTION>.sqf / map_orbat.sqf fragments below
// (moved here unchanged from Kit Core) can keep calling "] call _reg;" /
// "] call _map;" exactly as before.
private _reg = { _this call FTH_fnc_registerKit; };
private _map = { _this call FTH_fnc_mapOrbatClass; };

// ── Loadout library (auto-generated fragments) ────────────────────────────
#include "data_RBN.sqf"
#include "data_RBNSUP.sqf"
#include "data_RANGER.sqf"
#include "data_SFSG.sqf"
#include "data_SRR.sqf"
#include "data_SAS.sqf"

// ── ORBAT class -> role key ───────────────────────────────────────────────
#include "map_orbat.sqf"
#include "map_srr_sas.sqf"
