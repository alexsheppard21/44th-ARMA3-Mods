# 44th Kit Core

Shared loadout library for the 44th mods — the **single source of truth** for
every role's loadout. Both **44th ORBAT** (spawn kitting) and **44th Kit Crates**
(selection & customisation) read from it, so a player's spawn kit and the crate
contents can never drift apart. Also enforces **kit version control**.

This mod ships no editor objects; it is a dependency of ORBAT and Kit Crates.

## Requirements

- [CBA_A3](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997)

## What it provides

At preInit (`FTH_fnc_initKits`) it builds the shared library:

- `FTH_Kits` — `roleKey -> [displayName, faction, loadout, allowedSwap]`. The
  `loadout` is a standard `setUnitLoadout` array; `allowedSwap` is the WBK Kits
  whitelist of items a player may swap to.
- `FTH_RoleForClass` — legacy `_44th_ ORBAT classname -> roleKey` map, used only
  by browser-placed `_44th_` units (the ORBAT composition is now canonical).

`FTH_fnc_applyKit [unit, roleKey]` applies a kit where the unit is local and
tags it with `FTH_roleKey` (used by the master crate to show each player only
their kit, and by the respawn hook). `FTH_fnc_kitRespawn` re-applies the kit on
respawn client-side; `FTH_fnc_versionControl` enforces the version handshake.

## How units get kitted

The **ORBAT composition** is the source of playable slots. Each of its 139 units
carries an `FTH_kit` custom attribute holding its role key; at mission start the
attribute calls `FTH_fnc_applyKit`, so units spawn fully kitted. The legacy
`_44th_` classes fall back to `FTH_RoleForClass` via ORBAT's `fn_initUnit`.

## Editing loadouts

1. Edit the relevant `data_<FACTION>.sqf` fragment (loadout + allowed-swap list).
2. To change which kit a *slot* uses, edit that unit's **FTH_kit** attribute in
   the composition (Eden → unit → Attributes), not the class maps.
3. **Bump `FTH_KIT_VERSION` in `script_version.hpp`.** Clients whose version
   differs from the server's are hard-blocked (see `fn_versionControl.sqf`).
4. Re-pack the `kit_core` PBO (part of the `@44th` mod) and re-sign for the
   server if using signatures.

> The `data_<FACTION>.sqf` fragments were generated from the old Kit Crate
> scripts; loadout arrays are plain `setUnitLoadout` format.

## Version control

The server publishes its baked `FTH_KIT_VERSION`; every client compares it to
its own. On mismatch the client gets a **persistent on-screen notice** to update
and reconnect — input is not locked, so they can still move and ask in chat.

This is a cooperative nag, not a hard kick: with BattlEye and signature
verification off (unit policy allows client-side mods), a mod cannot forcibly
remove anyone. It reliably catches the "forgot to update" case. The check sets
`FTH_KitVersionMismatch = true`, which an admin tool could act on if one is added.

## Author

FullMetalShep
