/*
    FTH_fnc_logisticsInit  (postInit)

    Wires up the logistics point: players hold-interact (ACE) on a logistics
    point and request any supply crate, which the server then spawns next to
    the point.

    Server side: listens for the spawn request and creates the crate.
    Client side: builds the ACE action tree on every logistics-point class a
    crate addon registered, plus on any object a mission maker flagged with

        this setVariable ["FTH_logisticsPoint", true, true];

    The catalogue itself lives in whichever crate addons are loaded — each
    registers its categories at preInit (FTH_fnc_logisticsRegister), so this
    engine ships no crate names of its own and works on any modlist.

    Everything is optional — without ACE the point is just a prop, and no other
    part of the supply-crates addons depends on this.
*/

if (isServer) then {
    ["FTH_logistics_spawnCrate", { _this call FTH_fnc_spawnSupplyCrate }] call CBA_fnc_addEventHandler;
};

if (!hasInterface) exitWith {};

// Confirmation shown to the player who made the request.
["FTH_logistics_delivered", {
    params ["_crateName"];
    private _msg = format ["%1 delivered.", _crateName];
    if (!isNil "ace_common_fnc_displayTextStructured") then {
        [_msg] call ace_common_fnc_displayTextStructured;
    } else {
        hint _msg;
    };
}] call CBA_fnc_addEventHandler;

// The menu is ACE interaction; with no ACE there is nothing to attach to.
if (isNil "ace_interact_menu_fnc_createAction") exitWith {};

// No crate addon loaded (or none registered): nothing to offer.
if (isNil "FTH_LogisticsCrates" || {FTH_LogisticsCrates isEqualTo []}) exitWith {};

// The placeable logistics points — registered once each, class-wide.
{
    [_x, true] call FTH_fnc_logisticsActions;
} forEach (missionNamespace getVariable ["FTH_LogisticsPointClasses", []]);

// Objects promoted to logistics points at runtime (Zeus, scripts) — see
// FTH_fnc_registerLogisticsPoint.
["FTH_logistics_addPoint", {
    params ["_object"];
    [_object] call FTH_fnc_logisticsActions;
}] call CBA_fnc_addEventHandler;

// Objects flagged in their Eden init field. postInit runs after mission
// objects exist, but wait for the first frame so init fields have all run.
[] spawn {
    waitUntil { uiSleep 0.1; time > 0 };
    {
        if (_x getVariable ["FTH_logisticsPoint", false]) then {
            [_x] call FTH_fnc_logisticsActions;
        };
    } forEach (allMissionObjects "All");
};
