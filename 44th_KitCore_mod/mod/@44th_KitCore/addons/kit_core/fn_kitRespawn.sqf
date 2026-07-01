/*
    FTH_fnc_kitRespawn  (postInit, client)

    Composition units are kitted at mission start by their FTH_kit attribute
    (which calls FTH_fnc_applyKit server-side). That covers the initial spawn.
    On respawn a fresh unit is created without the loadout — and with "Save
    loadout" off, the mission won't restore it either — so here we remember the
    player's role key and re-apply the pristine kit whenever their unit changes.

    Uses CBA's "unit" player event, which fires on initial control and on every
    respawn / unit switch.
*/
if (!hasInterface) exitWith {};

FTH_myRoleKey = "";

["unit", {
    params ["_unit"];
    if (isNull _unit) exitWith {};

    // If the unit carries its own role key (initial spawn once synced, or a
    // switch to another kitted slot), trust it and remember it for respawns.
    private _key = _unit getVariable ["FTH_roleKey", ""];
    if (_key != "") exitWith { FTH_myRoleKey = _key; };

    // No role on this unit but we have a cached one: this is a respawn — the
    // fresh unit has no kit, so re-apply the pristine loadout.
    if (FTH_myRoleKey != "" && !isNil "FTH_fnc_applyKit") exitWith {
        [_unit, FTH_myRoleKey] call FTH_fnc_applyKit;
    };

    // First unit and the (public) role key hasn't synced yet: wait briefly for
    // it, then cache. The loadout itself is already applied server-side.
    [_unit] spawn {
        params ["_unit"];
        private _timeout = time + 20;
        waitUntil {
            uiSleep 0.5;
            !alive _unit
            || { (_unit getVariable ["FTH_roleKey", ""]) != "" }
            || { time > _timeout }
        };
        private _k = _unit getVariable ["FTH_roleKey", ""];
        if (_k != "") then { FTH_myRoleKey = _k; };
    };
}] call CBA_fnc_addPlayerEventHandler;
