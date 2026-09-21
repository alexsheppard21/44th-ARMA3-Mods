/*
    FTH_fnc_registerLogisticsPoint

    Turns any object into a logistics point at runtime, for Zeus-placed or
    script-spawned objects:

        [_object] call FTH_fnc_registerLogisticsPoint;

    Editor-placed objects don't need this — flagging them in the init field is
    enough:

        this setVariable ["FTH_logisticsPoint", true, true];

    The event is JIP-queued against the object, so players who join later still
    get the interaction, and the queue entry dies with the object.
*/
params ["_object"];

if (isNull _object) exitWith {};

_object setVariable ["FTH_logisticsPoint", true, true];
["FTH_logistics_addPoint", [_object], _object] call CBA_fnc_globalEventJIP;
