# 44th Kit Core

Shared loadout library for the 44th mods — the **single source of truth** for
every role's loadout. Both **44th ORBAT** (spawn kitting) and **44th Kit Crates**
(selection & customisation) read from it, so a player's spawn kit and the crate
contents can never drift apart. Also enforces **kit version control**.

This mod ships no editor objects; it is a dependency of ORBAT and Kit Crates.

**This addon defines no kits itself.** It owns only the shared maps and the
registration API. The actual loadout data lives in two separate faction
packages that call into this API from their own preInit:

- **[Kit Core BAF](../../../@44th_BAF/addons/kit_core_baf/)** (`@44th_BAF`) — RBN, RBN Support,
  Ranger, SFSG, SRR, SAS.
- **[Kit Core SciFi](../../../@44th_SCIFI/addons/kit_core_scifi/)** (`@44th_SCIFI`) — UCNMC (UCN Marine
  Corp).

Splitting it this way means this addon, and anything that only depends on it
(Kit Crates), never requires 3CB, TKE or OPTRE, and loads identically on every
modlist. Neither faction package requires the other's modpack either — losing
one never touches the other's kits.

## Requirements

- [CBA_A3](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997)

## What it provides

At preInit (`FTH_fnc_initKits`) it creates the shared library, empty:

- `FTH_Kits` — `roleKey -> [displayName, faction, loadout, allowedSwap]`. The
  `loadout` is a standard `setUnitLoadout` array; `allowedSwap` is the WBK Kits
  whitelist of items a player may swap to.
- `FTH_RoleForClass` — legacy `_44th_ ORBAT classname -> roleKey` map, used only
  by browser-placed `_44th_` units (the ORBAT composition is now canonical).
- `FTH_FactionAvailable` — `faction -> bool`, whether that faction's marker
  addon is present on this client.

It also exposes the registration API the faction packages call, each guaranteed
to run after this addon's own preInit via `requiredAddons`:

- `FTH_fnc_registerFactionAvailable [faction, addon]` — records whether one
  faction's marker addon is present, so a faction whose mods are missing gets
  skipped rather than registered empty.
- `FTH_fnc_registerKit [key, name, faction, loadout, swap]` — registers one kit
  into `FTH_Kits`, gated on the faction being available.
- `FTH_fnc_mapOrbatClass [key, classes]` — maps one or more legacy ORBAT
  classnames onto a role key in `FTH_RoleForClass`.

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

1. Edit the relevant `data_<FACTION>.sqf` fragment (loadout + allowed-swap
   list) in [Kit Core BAF](../../../@44th_BAF/addons/kit_core_baf/) or [Kit Core SciFi](../../../@44th_SCIFI/addons/kit_core_scifi/),
   whichever faction it belongs to.
2. To change which kit a *slot* uses, edit that unit's **FTH_kit** attribute in
   the composition (Eden → unit → Attributes), not the class maps.
3. **Bump the version in that faction package's `script_version.hpp`**
   (`FTH_KIT_VERSION_BAF` or `FTH_KIT_VERSION_SCIFI`). Bump this addon's own
   `FTH_KIT_VERSION` only when Kit Core itself changes. Clients whose versions
   differ from the server's get a persistent notice (see `fn_versionControl.sqf`).
4. Re-pack this PBO and the faction package(s) you touched, and re-sign for the
   server if using signatures.

> The `data_<FACTION>.sqf` fragments were generated from the old Kit Crate
> scripts; loadout arrays are plain `setUnitLoadout` format. Each fragment
> calls a bare `_reg` (and, for BAF, `_map`) — those are thin local forwarders
> defined by each faction package's own preInit script, not by this addon, so
> the fragments themselves never needed to change when the split happened.

## Version control

Every package holding kit data bakes its own version into `FTH_KitVersions` at
preInit — `Core` (this addon's `FTH_KIT_VERSION`), `BAF` and `SCIFI` (each
faction package's own `script_version.hpp`). The server publishes its set, and
every client compares each package the server has against its own; a package
missing on the client counts as a mismatch, extra client-only packages are
ignored. The notice names which package is out of date. On mismatch the client gets a **persistent on-screen notice** to update
and reconnect — input is not locked, so they can still move and ask in chat.

This is a cooperative nag, not a hard kick: with BattlEye and signature
verification off (unit policy allows client-side mods), a mod cannot forcibly
remove anyone. It reliably catches the "forgot to update" case. The check sets
`FTH_KitVersionMismatch = true`, which an admin tool could act on if one is added.

## Author

FullMetalShep
