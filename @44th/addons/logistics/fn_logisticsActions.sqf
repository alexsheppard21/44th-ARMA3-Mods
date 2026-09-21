/*
    FTH_fnc_logisticsActions  (client)

    Builds the "Request Supplies" ACE action tree from FTH_LogisticsCrates.

        ["_44th_LogisticsPoint", true] call FTH_fnc_logisticsActions;  // class-wide
        [_someObject]              call FTH_fnc_logisticsActions;      // one object

    params:
        _target  - object, or classname when _asClass is true
        _asClass - true to register on the class rather than one object

    Picking a crate fires a server event; the crate itself is created server
    side by FTH_fnc_spawnSupplyCrate.
*/
params ["_target", ["_asClass", false]];

if (isNil "ace_interact_menu_fnc_createAction") exitWith {};
if (isNil "FTH_LogisticsCrates") exitWith {};

// Per-object registration must not run twice (init-field scan + JIP event can
// both reach the same object).
if (!_asClass && {isNull _target || {_target getVariable ["FTH_logisticsReady", false]}}) exitWith {};

private _addAction = {
    params ["_path", "_action"];
    if (_asClass) then {
        [_target, 0, _path, _action] call ace_interact_menu_fnc_addActionToClass;
    } else {
        [_target, 0, _path, _action] call ace_interact_menu_fnc_addActionToObject;
    };
};

// Root action. Raised off the model origin and given a generous radius so it
// stays grabbable on whatever object a mission maker flagged.
private _root = [
    "FTH_Logistics",
    "Request Supplies",
    "",
    {},
    {true},
    {},
    [],
    [0, 0, 0.8],
    5
] call ace_interact_menu_fnc_createAction;
[[], _root] call _addAction;

{
    _x params ["_catId", "_catLabel", "_classes"];

    private _catName = format ["FTH_Log_%1", _catId];
    private _catAction = [_catName, _catLabel, "", {}, {true}] call ace_interact_menu_fnc_createAction;
    [["FTH_Logistics"], _catAction] call _addAction;

    {
        private _crateClass = _x;
        private _label = getText (configFile >> "CfgVehicles" >> _crateClass >> "displayName");
        if (_label == "") then { _label = _crateClass };

        private _action = [
            format ["%1_%2", _catName, _forEachIndex],
            _label,
            "",
            {
                params ["_object", "_player", "_params"];
                ["FTH_logistics_spawnCrate", [_object, _params select 0, _player]] call CBA_fnc_serverEvent;
            },
            {true},
            {},
            [_crateClass]
        ] call ace_interact_menu_fnc_createAction;
        [["FTH_Logistics", _catName], _action] call _addAction;
    } forEach _classes;
} forEach FTH_LogisticsCrates;

if (!_asClass) then {
    _target setVariable ["FTH_logisticsReady", true];
};
