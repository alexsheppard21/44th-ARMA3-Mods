/*
    FTH_fnc_initFactionsCW  (preInit)

    Registers the Cold War half of the roster (Royal Marines, 2 Para, Mechanised
    Infantry, and the crews shared between them) into the shared Kit Core
    library. Split out from Kit Core itself so the Cold War data ships, loads
    and can be dropped independently of the BAF and SciFi halves.

    Depends on Kit Core's own preInit (FTH_Kits / FTH_FactionAvailable /
    FTH_fnc_registerKit / FTH_fnc_registerFactionAvailable), guaranteed to
    have already run because this addon's requiredAddons lists KitCore_44th.
*/
#include "script_version.hpp"

if (isNil "FTH_Kits") exitWith {};

// Checked against the server's by Kit Core's fn_versionControl.
FTH_KitVersions set ["CW", FTH_KIT_VERSION_CW];

// Infantry is dressed from Spearpoint; the crews wear CWR3 flight kit and
// coveralls, so each is gated on the mod its uniform actually comes from.
private _factionAddon = createHashMapFromArray [
    ["CWRM",   "SP_Uniforms"],
    ["CWPARA", "SP_Uniforms"],
    ["CWMECH", "SP_Uniforms"],
    ["CWCREW", "cwr3_soldiers_uk"]
];
{
    [_x, _y] call FTH_fnc_registerFactionAvailable;
} forEach _factionAddon;

// Thin forwarder so the data_*.sqf fragments read the same as every other
// faction package's. There is no legacy ORBAT classname map: every slot carries
// its role key in the composition's FTH_kit attribute.
private _reg = { _this call FTH_fnc_registerKit; };

// ── Loadout library (Cold War modlist - Spearpoint / CWR3) ────────────────
#include "data_CWCREW.sqf"
#include "data_CWRM.sqf"
#include "data_CWPARA.sqf"
#include "data_CWMECH.sqf"
