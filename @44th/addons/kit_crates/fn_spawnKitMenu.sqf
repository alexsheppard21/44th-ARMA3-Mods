/*
    FTH_fnc_spawnKitMenu  (postInit, client)

    On EVERY spawn (initial and each respawn), auto-opens the WBK Kits kit menu
    on a kit box scoped to that player's ORBAT faction. The box holds EVERY kit
    in the player's faction (so they see the full group roster), but only the
    kit matching their own role (FTH_roleKey) is selectable — the rest show
    greyed. Kits from other factions never appear at all.

    Driven by CBA's "unit" player event, which fires on initial control and on
    every respawn / unit switch (same hook Kit Core's FTH_fnc_kitRespawn uses to
    re-apply the kit). If the player dies with the menu open, the next spawn
    simply opens it again.

    The box is created with createVehicleLocal, so no other player sees it, and
    is deleted as soon as the menu closes (or the player dies).

    Requires 44th KitCore (FTH_Kits / FTH_roleKey) and WBK Kits (Wbk_AddKit +
    WBK_KitMenu). If anything is missing it does nothing.

    NOTE: box placement, the facing/anim posing, and box cleanup timing are the
    parts most likely to need tuning against WBK Kits' camera — see comments.
*/
if (!hasInterface) exitWith {};

// Handle of the opener currently running, so a respawn replaces it rather than
// stacking a second menu on top.
FTH_spawnMenuHandle = scriptNull;

["unit", {
    params ["_unit"];
    if (isNull _unit) exitWith {};

    if (!isNull FTH_spawnMenuHandle) then { terminate FTH_spawnMenuHandle; };

    FTH_spawnMenuHandle = [_unit] spawn {
        params ["_unit"];

        // Give the mission (or the respawn) a moment to settle before we take
        // over the screen with the kit camera, so the menu never opens mid-load.
        uiSleep 5;

        // Wait for the kit library, WBK Kits, and this unit's role key to be
        // ready. On first spawn the key is set server-side by FTH_fnc_applyKit
        // (public, so it syncs); on respawn Kit Core's FTH_fnc_kitRespawn
        // re-applies the kit and sets it again on the new unit.
        private _timeout = time + 60;
        waitUntil {
            uiSleep 0.5;
            (
                !isNil "FTH_Kits"
                && { !isNil "Wbk_AddKit" }
                && { (_unit getVariable ["FTH_roleKey", ""]) != "" }
            )
            || { !alive _unit }
            || { time > _timeout }
        };

        // Bail if the player died or switched unit while we were waiting —
        // the "unit" event for the new unit will start a fresh opener.
        if (!alive _unit || { _unit != player }) exitWith {};

        private _roleKey = _unit getVariable ["FTH_roleKey", ""];
        if (_roleKey == "") exitWith {};
        if (isNil "FTH_Kits" || isNil "Wbk_AddKit") exitWith {};
        if !(_roleKey in FTH_Kits) exitWith {};

        // Faction is the 2nd element of the kit record: [name, faction, loadout, swap].
        private _faction = (FTH_Kits get _roleKey) select 1;

        // Local box: only this client sees it. Placed just in front of the player so
        // WBK Kits' camera has something to frame.
        private _box = "Box_NATO_Equip_F" createVehicleLocal (_unit modelToWorld [0, 1.5, 0]);
        _box setPosATL (_unit modelToWorld [0, 1.5, 0]);

        clearWeaponCargoGlobal _box;
        clearMagazineCargoGlobal _box;
        clearItemCargoGlobal _box;
        clearBackpackCargoGlobal _box;

        // Register every kit in the player's faction, each gated so only the
        // player's own role kit is selectable; the rest of the faction shows greyed.
        {
            _y params ["_name", "_kitFaction", "_loadout", "_swap"];
            if (_kitFaction == _faction) then {
                private _cond = format ["(player getVariable ['FTH_roleKey', '']) == '%1'", _x];
                [_box, _name, _loadout, _swap, _cond, {}] spawn Wbk_AddKit;
            };
        } forEach FTH_Kits;

        // Let WBK Kits finish registering the kits before opening the menu.
        uiSleep 0.5;

        // Open the WBK Kits kit menu on our box (method per WBK Kits docs).
        WBK_GlobalKitBoxRn = _box;
        [] exec "WBK_KitMenu\WBK_Kit_Camera.sqs";

        // Cosmetic pose so the player reads well in the kit camera.
        _unit switchMove selectRandom [
            "Acts_AidlPercMstpSloWWrflDnon_warmup_1",
            "Acts_AidlPercMstpSloWWrflDnon_warmup_2",
            "Acts_AidlPercMstpSloWWrflDnon_warmup_3",
            "Acts_AidlPercMstpSloWWrflDnon_warmup_4",
            "Acts_AidlPercMstpSloWWrflDnon_warmup_5"
        ];
        // Face the player relative to the box for the kit camera (per your snippet).
        private _dirToObj = [_unit, _box] call BIS_fnc_dirTo;
        private _actDir = _dirToObj - 180;
        _unit setDir _actDir;

        // Delete the local box the moment the player closes the kit menu (or
        // dies). We wait for the menu to actually open (dialog goes true), then
        // for it to close. The time cap is a safety net so the box can never
        // leak if the menu isn't detected as a dialog — swap `dialog` for
        // `!isNull (findDisplay <IDD>)` if WBK Kits' menu is a display rather
        // than a dialog. Spawned separately so terminating the opener on a
        // respawn never leaves the box behind.
        [_box, _unit] spawn {
            params ["_box", "_unit"];
            private _cap = time + 600;
            waitUntil { uiSleep 0.25; dialog || {!alive _unit} || {time > _cap} };   // menu opened
            waitUntil { uiSleep 0.25; !dialog || {!alive _unit} || {time > _cap} };  // menu closed
            if (!isNull _box) then { deleteVehicle _box; };
        };
    };
}] call CBA_fnc_addPlayerEventHandler;
