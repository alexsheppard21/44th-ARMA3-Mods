/*
    FTH_fnc_initKits  (preInit)

    Creates the shared loadout library and its supporting maps, once, before
    anything spawns:

      FTH_Kits             : HashMap  roleKey -> [displayName, faction, loadout, allowedSwap]
      FTH_RoleForClass     : HashMap  lower-case ORBAT classname -> roleKey
      FTH_FactionAvailable : HashMap  faction -> bool (its marker addon is present)
      FTH_KitVersions      : HashMap  package ("Core", "BAF", "SCIFI") -> kit data version

    This addon owns only the maps and the registration API
    (FTH_fnc_registerKit, FTH_fnc_mapOrbatClass, FTH_fnc_registerFactionAvailable).
    It defines no kits itself, so it never depends on 3CB, TKE, OPTRE, or
    anything else faction-specific, and loads the same on every modlist.

    Each faction half - Kit Core BAF (data_RBN.sqf etc.), Kit Core SciFi
    (data_UCNMC.sqf), or any future one - registers its own kits from its own
    preInit via these functions, guaranteed to run after this one because
    each declares KitCore_44th in its requiredAddons. Kit Crates, ORBAT and
    the respawn hook only ever read FTH_Kits/FTH_RoleForClass at runtime, so
    none of them need to know which faction packages are actually installed.
*/
#include "script_version.hpp"

if (!isNil "FTH_Kits") exitWith {};

FTH_Kits = createHashMap;
FTH_RoleForClass = createHashMap;

// Public so the crates and any admin tooling can see which factions this
// client actually has the mods for.
FTH_FactionAvailable = createHashMap;

// Each package that holds kit data adds its own version here from its preInit,
// so fn_versionControl can tell which package a client is out of date on.
FTH_KitVersions = createHashMap;
FTH_KitVersions set ["Core", FTH_KIT_VERSION];
