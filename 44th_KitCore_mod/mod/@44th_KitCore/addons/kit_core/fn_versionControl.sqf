/*
    FTH_fnc_versionControl  (postInit)

    Kit-version notice. The server publishes the kit-data version baked into its
    KitCore PBO; every client compares it against its own baked value. On
    mismatch the client gets a persistent on-screen message telling them to
    update. Input is NOT locked, so they can still move and chat to ask what's
    wrong. Matching clients are untouched.

    NOTE: With BattlEye and signature verification off, a mod cannot forcibly
    kick anyone, so this is a persistent nag rather than a hard block. It sets
    FTH_KitVersionMismatch = true, which an admin tool could act on if one is
    ever added.
*/
#include "script_version.hpp"

if (isServer) then {
    // Public + JIP-synced so late joiners also receive it.
    missionNamespace setVariable ["FTH_ServerKitVersion", FTH_KIT_VERSION, true];
};

if (hasInterface) then {
    private _clientVer = FTH_KIT_VERSION;
    [_clientVer] spawn {
        params ["_clientVer"];

        waitUntil { uiSleep 1; !isNil { missionNamespace getVariable "FTH_ServerKitVersion" } };
        private _serverVer = missionNamespace getVariable ["FTH_ServerKitVersion", ""];

        if (_serverVer isEqualTo _clientVer) exitWith {};

        // ── Version mismatch: persistent notice (no input lock) ───────────
        missionNamespace setVariable ["FTH_KitVersionMismatch", true];

        private _msg = parseText format [
            "<t size='1.3' color='#ff4d4d'>44th — KIT OUT OF DATE</t><br/>"
          + "<t size='1.0'>Your 44th kit does not match the server.</t><br/>"
          + "<t size='1.0'>Update the 44th mods via the Steam Workshop and reconnect.</t><br/><br/>"
          + "<t size='0.85' color='#aaaaaa'>Server kit: %1</t><br/>"
          + "<t size='0.85' color='#aaaaaa'>Your kit: %2</t>",
            _serverVer, _clientVer
        ];

        // Keep reminding: private hint re-shown regularly, plus a global
        // system-chat line naming the out-of-date player every 60s so the whole
        // group keeps seeing who needs to update. remoteExec 0 = all machines.
        private _next = 0;
        while { true } do {
            hintSilent _msg;

            if (time >= _next) then {
                _next = time + 60;
                private _who = name player;
                if (_who == "") then { _who = "A player"; };
                ([format [
                    "[44th] %1 is running an OUT-OF-DATE 44th kit (theirs: %2, server: %3) - please update and reconnect.",
                    _who, _clientVer, _serverVer
                ]] remoteExec ["systemChat", 0]);
            };

            uiSleep 20;
        };
    };
};
