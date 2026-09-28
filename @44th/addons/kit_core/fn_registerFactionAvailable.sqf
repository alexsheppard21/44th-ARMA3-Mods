/*
    FTH_fnc_registerFactionAvailable

    Records whether one faction's marker addon is actually present on this
    client, so FTH_fnc_registerKit can skip that faction's kits instead of
    registering them empty. Called once per faction by each faction
    package's own preInit, before it registers any of that faction's kits.

    Params: [_faction, _addon]
*/
params ["_faction", "_addon"];
FTH_FactionAvailable set [_faction, isClass (configFile >> "CfgPatches" >> _addon)];
