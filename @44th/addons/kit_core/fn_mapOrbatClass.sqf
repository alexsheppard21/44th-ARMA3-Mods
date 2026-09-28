/*
    FTH_fnc_mapOrbatClass

    Maps one or more legacy ORBAT classnames onto a role key
    (FTH_RoleForClass). Called by each faction package's own map_orbat-style
    fragment, via a thin per-package "_map" forwarder.

    Params: [_key, _classes]
*/
params ["_key", "_classes"];
{ FTH_RoleForClass set [toLower _x, _key] } forEach _classes;
