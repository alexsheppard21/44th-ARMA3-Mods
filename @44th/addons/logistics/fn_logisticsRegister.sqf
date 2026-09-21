/*
    FTH_fnc_logisticsRegister

    Adds a category of crates to the shared logistics catalogue. Called from a
    crate addon's own preInit, so the catalogue is complete before
    FTH_fnc_logisticsInit builds the menu at postInit.

        ["MED", "Medical", ["_44th_Crate_Medical"]] call FTH_fnc_logisticsRegister;

    params:
        _catId    - short id, unique per category ("MED", "RBN", "UCNMC", ...)
        _catLabel - what players see as the submenu name
        _classes  - crate classnames, in menu order
        _point    - optional logistics-point class to hang the menu on

    Registering the same category id twice merges the class lists rather than
    replacing them, so two addons can contribute to one category.
*/
params ["_catId", "_catLabel", ["_classes", []], ["_point", ""]];

if (isNil "FTH_LogisticsCrates")      then { FTH_LogisticsCrates = []; };
if (isNil "FTH_LogisticsPointClasses") then { FTH_LogisticsPointClasses = []; };

if (_point != "") then { FTH_LogisticsPointClasses pushBackUnique _point; };

if (_classes isEqualTo []) exitWith {};

private _i = FTH_LogisticsCrates findIf { (_x select 0) == _catId };
if (_i < 0) then {
    FTH_LogisticsCrates pushBack [_catId, _catLabel, _classes];
} else {
    private _existing = (FTH_LogisticsCrates select _i) select 2;
    { _existing pushBackUnique _x } forEach _classes;
};
