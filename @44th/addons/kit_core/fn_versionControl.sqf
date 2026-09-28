/*
    FTH_fnc_versionControl  (postInit)

    Kit-version notice. Kit data is split across packages - Kit Core itself plus
    one per faction (Kit Core BAF, Kit Core SciFi) - and each bakes its own
    version into FTH_KitVersions at preInit. The server publishes its set; every
    client compares each package the server has against its own. A package the
    server has but the client lacks, or at a different version, is a mismatch.
    Packages only the client has are ignored (e.g. a client that also has the
    SciFi mods loaded on a BAF night).

    On mismatch the client gets a persistent on-screen message telling them to
    update. Input is NOT locked, so they can still move and chat to ask what's
    wrong. Matching clients are untouched.

    NOTE: With BattlEye and signature verification off, a mod cannot forcibly
    kick anyone, so this is a persistent nag rather than a hard block. It sets
    FTH_KitVersionMismatch = true, which an admin tool could act on if one is
    ever added.
*/
if (isNil "FTH_KitVersions") exitWith {};

if (isServer) then {
    // Array of [package, version] pairs. Public + JIP-synced so late joiners
    // also receive it.
    private _pairs = (keys FTH_KitVersions) apply { [_x, FTH_KitVersions get _x] };
    missionNamespace setVariable ["FTH_ServerKitVersions", _pairs, true];
};

if (hasInterface) then {
    [] spawn {
        waitUntil { uiSleep 1; !isNil { missionNamespace getVariable "FTH_ServerKitVersions" } };
        private _serverPairs = missionNamespace getVariable ["FTH_ServerKitVersions", []];

        // "Package: theirs -> server" for every package that doesn't match.
        private _stale = [];
        {
            _x params ["_package", "_serverVer"];
            private _clientVer = FTH_KitVersions getOrDefault [_package, "not loaded"];
            if !(_clientVer isEqualTo _serverVer) then {
                _stale pushBack format ["%1: yours %2, server %3", _package, _clientVer, _serverVer];
            };
        } forEach _serverPairs;

        if (_stale isEqualTo []) exitWith {};

        // ── Version mismatch: persistent notice (no input lock) ───────────
        missionNamespace setVariable ["FTH_KitVersionMismatch", true];

        private _msg = parseText format [
            "<t size='1.3' color='#ff4d4d'>44th — KIT OUT OF DATE</t><br/>"
          + "<t size='1.0'>Your 44th kit does not match the server.</t><br/>"
          + "<t size='1.0'>Update the 44th mods via the Steam Workshop and reconnect.</t><br/><br/>"
          + "<t size='0.85' color='#aaaaaa'>%1</t>",
            _stale joinString "<br/>"
        ];
        private _staleText = _stale joinString "; ";

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
                    "[44th] %1 is running an OUT-OF-DATE 44th kit (%2) - please update and reconnect.",
                    _who, _staleText
                ]] remoteExec ["systemChat", 0]);
            };

            uiSleep 20;
        };
    };
};
