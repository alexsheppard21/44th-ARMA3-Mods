/*
    FTH_fnc_initFactionsSciFi  (preInit)

    Registers the SciFi half of the roster (UCNMC - UCN Marine Corp, The
    Kuiper Engagements) into the shared Kit Core library. Split out from Kit
    Core itself so the SciFi data ships, loads and can be dropped
    independently of the BAF half: loading only this addon must never pull
    in 3CB, and removing it must never disturb the BAF kits.

    Depends on Kit Core's own preInit (FTH_Kits / FTH_FactionAvailable /
    FTH_fnc_registerKit / FTH_fnc_registerFactionAvailable), guaranteed to
    have already run because this addon's requiredAddons lists KitCore_44th.
*/
#include "script_version.hpp"

if (isNil "FTH_Kits") exitWith {};

// Checked against the server's by Kit Core's fn_versionControl.
FTH_KitVersions set ["SCIFI", FTH_KIT_VERSION_SCIFI];

private _factionAddon = createHashMapFromArray [
    ["UCNMC", "TKE_Unit_Groups"]
];
{
    _x params ["_faction", "_addon"];
    [_faction, _addon] call FTH_fnc_registerFactionAvailable;
} forEach _factionAddon;

// Thin forwarder so data_UCNMC.sqf (moved here unchanged from Kit Core) can
// keep calling "] call _reg;" exactly as before. UCNMC has no legacy ORBAT
// classname map (map_orbat.sqf has no UCNMC entries), so no "_map" forwarder
// is needed here.
private _reg = { _this call FTH_fnc_registerKit; };

// ── Loadout library (SciFi modpack - The Kuiper Engagements) ──────────────
#include "data_UCNMC.sqf"
