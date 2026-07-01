/*
    Fills a kit crate from the shared loadout library (44th_KitCore / FTH_Kits),
    so crate contents can never drift from what players spawn with.

    Params: [_crate, _faction]
      _faction = "RBN" | "RBNSUP" | "RANGER" | "SFSG" | "SRR" | "SAS"
                 -> registers every kit for that faction (Zeus can re-role here).
      _faction = "MASTER"
                 -> registers ALL kits, each gated by a condition so a player
                    only sees the kit matching their own role (FTH_roleKey).

    Requires Warbird (Wbk_AddKit). If Warbird or KitCore is absent, the crate is
    left empty after a safe timeout.
*/
params ["_crate", ["_faction", ""]];

private _timeout = time + 60;
waitUntil { !isNil "Wbk_AddKit" || time > _timeout };
if (isNil "Wbk_AddKit") exitWith {};
if (isNil "FTH_Kits") exitWith {};

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

private _isMaster = (_faction == "MASTER");

{
    _y params ["_name", "_kitFaction", "_loadout", "_swap"];
    if (_isMaster || {_kitFaction == _faction}) then {
        // Master crate: show a kit only to the player whose role matches it.
        private _cond = "true";
        if (_isMaster) then {
            _cond = format ["(player getVariable ['FTH_roleKey', '']) == '%1'", _x];
        };
        [_crate, _name, _loadout, _swap, _cond, {}] spawn Wbk_AddKit;
    };
} forEach FTH_Kits;
