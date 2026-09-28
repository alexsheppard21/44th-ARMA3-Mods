# 44th Kit Core — SciFi

Registers the SciFi half of the 44th roster into [Kit Core](../../../@44th/addons/kit_core/)'s
shared loadout library: UCNMC — UCN Marine Corp (The Kuiper Engagements). Split
out of Kit Core itself so this data can ship, load and be dropped on its own —
loading only this addon never requires 3CB, and removing it never touches the
milsim kits in [Kit Core BAF](../../../@44th_BAF/addons/kit_core_baf/).

This mod ships no editor objects; it is a dependency of ORBAT — SciFi and Kit
Crates whenever a UCNMC role is in play.

## Requirements

- [CBA_A3](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997)
- 44th Kit Core (`@44th`)

Deliberately does **not** require TKE or OPTRE itself — the faction-availability
gate this addon registers at preInit (`FTH_fnc_registerFactionAvailable`) lets
it load on any modlist and simply register nothing if they aren't present,
exactly like Kit Core never requires a faction's marker addon. Only the
addons that actually place TKE/OPTRE-classed content (ORBAT SciFi, Supply
Crates SciFi) hard-require them.

## What it provides

At preInit (`FTH_fnc_initFactionsSciFi`, guaranteed to run after Kit Core's own
preInit via `requiredAddons`):

1. Registers UCNMC's marker addon (`TKE_Unit_Groups`) via
   `FTH_fnc_registerFactionAvailable`.
2. Defines a thin local `_reg` forwarder to Kit Core's `FTH_fnc_registerKit`,
   so `data_UCNMC.sqf` (moved here unchanged) doesn't need to change. UCNMC has
   no legacy ORBAT classname map, so there's no `_map` forwarder here.
3. `#include`s `data_UCNMC.sqf` — the loadout + allowed-swap arrays for all 17
   UCNMC roles.

`wbk_UCNMC_kits.sqf` also lives here: a working copy of the same 17 kits in the
raw `[this, name, loadout, swap, cond, extra] spawn Wbk_AddKit;` form, kept in
sync with `data_UCNMC.sqf` by hand for pasting directly into a crate's Eden
init field during testing. It isn't `#include`d by anything.

## Editing loadouts

Edit `data_UCNMC.sqf` directly (loadout + allowed-swap list), and mirror the
same change into `wbk_UCNMC_kits.sqf` if you're also testing via a
directly-scripted crate. See
[Kit Core's README](../../../@44th/addons/kit_core/README.md#editing-loadouts) for the full
workflow, including bumping `FTH_KIT_VERSION`.
