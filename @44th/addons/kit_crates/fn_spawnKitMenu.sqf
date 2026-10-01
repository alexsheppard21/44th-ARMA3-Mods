/*
    FTH_fnc_spawnKitMenu  (postInit, client)

    On EVERY spawn (initial and each respawn), auto-opens the WBK Kits kit menu
    on a kit box scoped to that player's ORBAT faction. The box holds EVERY kit
    in the player's faction (so they see the full group roster), but only the
    kit matching their own role (FTH_roleKey) is selectable — the rest show
    greyed. Kits from other factions never appear at all.

    Triggered two ways:
      - directly at postInit for the unit the player starts in. CBA's "unit"
        event for the first unit can fire before this handler is registered,
        so relying on it alone misses the initial spawn.
      - CBA's "unit" player event for every respawn / unit switch (same hook
        Kit Core's FTH_fnc_kitRespawn uses to re-apply the kit).
    A newer trigger always replaces an opener that is still waiting, so menus
    never stack. If the player dies with the menu open, the next spawn simply
    opens it again.

    The box is created with createVehicleLocal, so no other player sees it, and
    is deleted as soon as the menu closes (or the player dies).

    Every early exit is logged with an "FTH spawnKitMenu:" prefix in the RPT,
    so a menu that fails to appear says why.

    Requires 44th KitCore (FTH_Kits / FTH_roleKey) and WBK Kits (Wbk_AddKit +
    WBK_KitMenu). If anything is missing it does nothing.
*/
if (!hasInterface) exitWith {};

FTH_spawnMenuHandle = scriptNull;

FTH_spawnMenuOpen = {
    params ["_unit"];
    if (isNull _unit) exitWith {};

    if (!isNull FTH_spawnMenuHandle) then { terminate FTH_spawnMenuHandle; };

    FTH_spawnMenuHandle = [_unit] spawn {
        params ["_unit"];
        diag_log format ["FTH spawnKitMenu: triggered for %1", _unit];

        // Wait until the player is actually in the game on this unit: mission
        // running, main display up, and no other dialog open (briefing, the
        // respawn screen). Opening the kit camera on top of another dialog
        // gets it closed again, and would confuse the box cleanup below.
        waitUntil {
            uiSleep 0.5;
            !alive _unit || { _unit != player } ||
            { time > 0 && {!isNull findDisplay 46} && {!dialog} }
        };
        if (!alive _unit || { _unit != player }) exitWith {
            diag_log "FTH spawnKitMenu: unit died or changed before the game was ready";
        };

        // Give the mission (or the respawn) a moment to settle before we take
        // over the screen with the kit camera.
        uiSleep 3;

        // Wait for the kit library, WBK Kits, and this unit's role key. On first
        // spawn the key is set server-side by FTH_fnc_applyKit (public, so it
        // syncs); on respawn Kit Core's FTH_fnc_kitRespawn re-applies the kit
        // and sets it again on the new unit. uiSleep-based timeout so it can't
        // stall on mission time.
        private _deadline = diag_tickTime + 90;
        waitUntil {
            uiSleep 0.5;
            (
                !isNil "FTH_Kits"
                && { !isNil "Wbk_AddKit" }
                && { (_unit getVariable ["FTH_roleKey", ""]) != "" }
            )
            || { !alive _unit }
            || { _unit != player }
            || { diag_tickTime > _deadline }
        };

        if (!alive _unit || { _unit != player }) exitWith {
            diag_log "FTH spawnKitMenu: unit died or changed while waiting for the kit";
        };
        private _roleKey = _unit getVariable ["FTH_roleKey", ""];
        if (isNil "FTH_Kits" || isNil "Wbk_AddKit") exitWith {
            diag_log format ["FTH spawnKitMenu: missing dependency (FTH_Kits: %1, Wbk_AddKit: %2)", !isNil "FTH_Kits", !isNil "Wbk_AddKit"];
        };
        if (_roleKey == "") exitWith {
            diag_log format ["FTH spawnKitMenu: no FTH_roleKey on %1 after 90s (Zeus/unkitted slot?)", _unit];
        };
        if !(_roleKey in FTH_Kits) exitWith {
            diag_log format ["FTH spawnKitMenu: role key %1 not in FTH_Kits", _roleKey];
        };

        // Faction is the 2nd element of the kit record: [name, faction, loadout, swap].
        private _faction = (FTH_Kits get _roleKey) select 1;

        // Local box: only this client sees it. Placed just in front of the player so
        // WBK Kits' camera has something to frame.
        private _box = "Box_NATO_Equip_F" createVehicleLocal (_unit modelToWorld [0, 1.5, 0]);
        _box setPosATL (_unit modelToWorld [0, 1.5, 0]);

        clearWeaponCargo _box;
        clearMagazineCargo _box;
        clearItemCargo _box;
        clearBackpackCargo _box;

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
        diag_log format ["FTH spawnKitMenu: opened kit menu for %1 (%2)", _roleKey, _faction];

        // Cosmetic pose so the player reads well in the kit camera.
        _unit switchMove selectRandom [
            "Acts_AidlPercMstpSloWWrflDnon_warmup_1",
            "Acts_AidlPercMstpSloWWrflDnon_warmup_2",
            "Acts_AidlPercMstpSloWWrflDnon_warmup_3",
            "Acts_AidlPercMstpSloWWrflDnon_warmup_4",
            "Acts_AidlPercMstpSloWWrflDnon_warmup_5"
        ];
        // Face the player relative to the box for the kit camera.
        private _dirToObj = [_unit, _box] call BIS_fnc_dirTo;
        _unit setDir (_dirToObj - 180);

        // Delete the local box once the player has closed the kit menu (or
        // dies). No other dialog was open when we started, so the first dialog
        // to appear is the kit menu. The 10 minute cap is a safety net so the
        // box can never leak if the menu isn't detected as a dialog. Spawned
        // separately so a replaced opener never leaves its box behind.
        [_box, _unit] spawn {
            params ["_box", "_unit"];
            private _cap = diag_tickTime + 600;
            waitUntil { uiSleep 0.25; dialog || {!alive _unit} || {diag_tickTime > _cap} };   // menu opened
            waitUntil { uiSleep 0.25; !dialog || {!alive _unit} || {diag_tickTime > _cap} };  // menu closed
            if (!isNull _box) then { deleteVehicle _box; };
        };
    };
};

// Every respawn / unit switch.
["unit", {
    params ["_unit"];
    [_unit] call FTH_spawnMenuOpen;
}] call CBA_fnc_addPlayerEventHandler;

// The unit the player starts in.
[] spawn {
    waitUntil { uiSleep 0.5; !isNull player };
    [player] call FTH_spawnMenuOpen;
};
