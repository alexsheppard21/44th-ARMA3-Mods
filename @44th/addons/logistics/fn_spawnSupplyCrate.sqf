/*
    FTH_fnc_spawnSupplyCrate  (server)

    Creates a requested supply crate next to a logistics point. Called through
    the "FTH_logistics_spawnCrate" CBA server event, never directly by clients.

    params:
        _point  - the logistics point the request came from
        _class  - crate classname (must be one we actually ship)
        _caller - the requesting player, for the confirmation message

    The crate fills itself: its Extended_InitPost EH runs on createVehicle just
    as it does for an editor-placed crate.
*/
params ["_point", "_class", ["_caller", objNull]];

if (!isServer) exitWith {};
if (isNull _point) exitWith {};
// No crate addon loaded: there is no catalogue to validate against.
if (isNil "FTH_LogisticsCrates") exitWith {};

// Only ever spawn crates from the catalogue — the request arrives from a
// client, so don't take the classname on trust.
private _known = false;
{
    if (_class in (_x select 2)) exitWith { _known = true };
} forEach FTH_LogisticsCrates;
if (!_known) exitWith {};

// Drop on clear ground around the point, working outwards from directly behind
// it, so repeated requests don't stack crates inside each other.
private _dropPos = _point getRelPos [3, 180];
{
    private _candidate = _point getRelPos [3, _x];
    // "House" catches crate models built on House_F rather than ReammoBox_F
    // (the OPTRE weapon crates are), so those don't get stacked either.
    if ((nearestObjects [_candidate, ["ReammoBox_F", "ThingX", "House"], 1.5]) isEqualTo []) exitWith {
        _dropPos = _candidate;
    };
} forEach [180, 135, 225, 90, 270, 45, 315, 0];

private _crate = createVehicle [_class, [_dropPos select 0, _dropPos select 1, 0], [], 0, "CAN_COLLIDE"];
_crate setDir (getDir _point);

// Let Zeus tidy up after the players.
{ _x addCuratorEditableObjects [[_crate], true] } forEach allCurators;

if (!isNull _caller) then {
    private _label = getText (configFile >> "CfgVehicles" >> _class >> "displayName");
    ["FTH_logistics_delivered", [_label], _caller] call CBA_fnc_targetEvent;
};
