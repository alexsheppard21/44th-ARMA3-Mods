params ["_unit", "_headgear", "_rank", "_srFreq", "_lrFreq"];

// Gear and TFAR setup only where the unit is local, so it runs exactly once.
// Fires again on respawn (Extended_InitPost re-runs on the new unit object).
if (local _unit) then {
    // Apply the role's kit from the shared library (44th_KitCore). The role key
    // is derived from the unit's classname via FTH_RoleForClass, so init lines
    // don't need to carry it. setUnitLoadout replaces uniform/headgear/vest/etc.
    private _roleKey = "";
    if (!isNil "FTH_RoleForClass") then {
        _roleKey = FTH_RoleForClass getOrDefault [toLower (typeOf _unit), ""];
    };

    private _kitted = false;
    if (_roleKey != "" && !isNil "FTH_fnc_applyKit") then {
        _kitted = [_unit, _roleKey] call FTH_fnc_applyKit;
    };

    // Fallback for roles with no kit (unmapped slots, or KitCore not loaded):
    // keep the previous base uniform/headgear/essentials so they aren't naked.
    if (!_kitted) then {
        _unit forceAddUniform "UK3CB_BAF_U_Smock_MTP";
        if (_headgear != "") then { _unit addHeadgear _headgear; };
        if !(_unit hasItem "ItemMap")     then { _unit addItem "ItemMap"; };
        if !(_unit hasItem "ItemCompass") then { _unit addItem "ItemCompass"; };
        if !(_unit hasItem "ItemWatch")   then { _unit addItem "ItemWatch"; };
        if !(_unit hasItem "FirstAidKit") then { _unit addItemToUniform "FirstAidKit"; };
    };

    // Rank and TFAR frequencies are independent of the loadout, so always apply.
    _unit setRank _rank;
    if (_srFreq != "" && !isNil "tfar_fnc_parseFrequenciesInput") then {
        _unit setVariable ["TFAR_freq_sr", [_srFreq, 8, 512, 30, 10] call tfar_fnc_parseFrequenciesInput, true];
    };
    if (_lrFreq != "" && !isNil "tfar_fnc_parseFrequenciesInput") then {
        _unit setVariable ["TFAR_freq_lr", [_lrFreq, 9, 87, 30, 10] call tfar_fnc_parseFrequenciesInput, true];
    };
};
