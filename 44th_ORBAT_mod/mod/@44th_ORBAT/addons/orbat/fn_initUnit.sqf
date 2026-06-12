params ["_unit", "_headgear", "_rank", "_srFreq", "_lrFreq"];
_unit forceAddUniform "UK3CB_BAF_U_Smock_MTP";
if (_headgear != "") then { _unit addHeadgear _headgear; };
_unit setRank _rank;
if !(_unit hasItem "ItemMap")     then { _unit addItem "ItemMap"; };
if !(_unit hasItem "ItemCompass") then { _unit addItem "ItemCompass"; };
if !(_unit hasItem "ItemWatch")   then { _unit addItem "ItemWatch"; };
if !(_unit hasItem "FirstAidKit") then { _unit addItemToUniform "FirstAidKit"; };
if (_srFreq != "" && !isNil "tfar_fnc_parseFrequenciesInput") then {
    _unit setVariable ["TFAR_freq_sr", [_srFreq, 8, 512, 30, 10] call tfar_fnc_parseFrequenciesInput, true];
};
if (_lrFreq != "" && !isNil "tfar_fnc_parseFrequenciesInput") then {
    _unit setVariable ["TFAR_freq_lr", [_lrFreq, 9, 87, 30, 10] call tfar_fnc_parseFrequenciesInput, true];
};
