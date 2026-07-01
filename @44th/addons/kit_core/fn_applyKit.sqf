/*
    FTH_fnc_applyKit

    Applies a role's loadout from the shared library to a unit and tags the
    unit with its role key (used by the master kit crate for per-player
    visibility). Run where the unit is local.

    Params:  [_unit, _roleKey]
    Returns: true if a kit was applied, false if no kit exists for the key.
*/
params ["_unit", ["_roleKey", ""]];

if (isNil "FTH_Kits") exitWith { false };
if !(_roleKey in FTH_Kits) exitWith { false };

(FTH_Kits get _roleKey) params ["_name", "_faction", "_loadout", "_swap"];

// Tag the unit so the master crate can show it only its own kit, and so the
// respawn hook can re-apply after death. Public so all machines see it.
_unit setVariable ["FTH_roleKey", _roleKey, true];

// setUnitLoadout only takes effect where the unit is local (server at mission
// start; the owning client on respawn). The respawn hook re-applies client-side.
if (local _unit) then {
    _unit setUnitLoadout _loadout;
};

true
