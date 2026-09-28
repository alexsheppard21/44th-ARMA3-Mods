# 44th Kit Core — BAF

Registers the milsim half of the 44th roster into [Kit Core](../../../@44th/addons/kit_core/)'s
shared loadout library: RBN, RBN Support, Ranger, SFSG, SRR, SAS. Split out of
Kit Core itself so this data can ship, load and be dropped on its own —
loading only this addon never requires TKE or OPTRE, and removing it never
touches the SciFi kits in [Kit Core SciFi](../../../@44th_SCIFI/addons/kit_core_scifi/).

This mod ships no editor objects; it is a dependency of ORBAT and Kit Crates
whenever a milsim role is in play.

## Requirements

- [CBA_A3](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997)
- 44th Kit Core (`@44th`)

Deliberately does **not** require UK3CB BAF itself — the faction-availability
gate this addon registers at preInit (`FTH_fnc_registerFactionAvailable`) lets
it load on any modlist and simply register nothing if 3CB isn't present,
exactly like Kit Core never requires a faction's marker addon. Only the
addons that actually place 3CB-classed content (ORBAT, Supply Crates) hard-require it.

## What it provides

At preInit (`FTH_fnc_initFactionsBAF`, guaranteed to run after Kit Core's own
preInit via `requiredAddons`):

1. Registers each BAF faction's marker addon (`UK3CB_BAF_Equipment_Uniforms`)
   via `FTH_fnc_registerFactionAvailable`.
2. Defines thin local `_reg` / `_map` forwarders to Kit Core's
   `FTH_fnc_registerKit` / `FTH_fnc_mapOrbatClass`, so the `data_<FACTION>.sqf`
   and `map_orbat.sqf` fragments below (moved here unchanged) don't need to
   change.
3. `#include`s `data_RBN.sqf`, `data_RBNSUP.sqf`, `data_RANGER.sqf`,
   `data_SFSG.sqf`, `data_SRR.sqf`, `data_SAS.sqf` — the loadout + allowed-swap
   arrays.
4. `#include`s `map_orbat.sqf` and `map_srr_sas.sqf` — legacy ORBAT classname
   → role-key mappings.

## Editing loadouts

Edit the relevant `data_<FACTION>.sqf` fragment directly (loadout + allowed-swap
list). See [Kit Core's README](../../../@44th/addons/kit_core/README.md#editing-loadouts) for the
full workflow, including bumping `FTH_KIT_VERSION_BAF` in this addon's
`script_version.hpp`.
