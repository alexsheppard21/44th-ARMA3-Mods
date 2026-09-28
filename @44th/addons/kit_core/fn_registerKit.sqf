/*
    FTH_fnc_registerKit

    Registers one kit into the shared library (FTH_Kits). Called by each
    faction package's own preInit fragment (data_<FACTION>.sqf files, via a
    thin per-package "_reg" forwarder so those fragments don't need to
    change). A kit whose faction isn't available (marker addon missing) is
    skipped, not registered empty.

    Params: [_key, _name, _faction, _loadout, _swap]
*/
params ["_key", "_name", "_faction", "_loadout", "_swap"];
if !(FTH_FactionAvailable getOrDefault [_faction, true]) exitWith {};
FTH_Kits set [_key, [_name, _faction, _loadout, _swap]];
