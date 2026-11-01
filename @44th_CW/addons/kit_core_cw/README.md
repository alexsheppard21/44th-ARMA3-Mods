# 44th Kit Core — Cold War

Registers the Cold War half of the 44th roster into [Kit Core](../../../@44th/addons/kit_core/)'s
shared loadout library: Royal Marines, 2 Para, Mechanised Infantry, the aircrew
and armour crews they share, and Zeus. Split out of Kit Core itself so this data
can ship, load and be dropped on its own — it never requires 3CB, TKE or OPTRE,
and removing it never touches the other factions' kits.

This mod ships no editor objects; it is a dependency of ORBAT — Cold War and Kit
Crates whenever a Cold War role is in play.

## Requirements

- [CBA_A3](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997)
- 44th Kit Core (`@44th`)

Deliberately does **not** require Spearpoint or CWR3 itself — the
faction-availability gate this addon registers at preInit
(`FTH_fnc_registerFactionAvailable`) lets it load on any modlist and simply
register nothing if they aren't present. Only the addons that actually place
Cold War-classed content (ORBAT CW, Supply Crates CW) hard-require them.

## Factions

| Faction | Kits | Marker addon | Data file |
|---|---|---|---|
| `CWRM` — Royal Marines | 16 | `SP_Uniforms` | `data_CWRM.sqf` |
| `CWPARA` — 2 Para | 14 | `SP_Uniforms` | `data_CWPARA.sqf` |
| `CWMECH` — Mechanised Infantry | 14 | `SP_Uniforms` | `data_CWMECH.sqf` |
| `CWCREW` — Mailman and Anvil crews | 3 | `cwr3_soldiers_uk` | `data_CWCREW.sqf` |
| `CWZEUS` — Regimental Command | 1 | `SP_Uniforms` | `data_CWZEUS.sqf` |

Role keys are the faction plus the role: `CWRM_PlatoonIC`, `CWPARA_GPMGNo1`,
`CWCREW_Pilot`. The ORBAT slots and crates look kits up by key, so **keys must
not change**; display names can.

## Editing loadouts

Edit the `data_CW*.sqf` file directly (loadout + allowed-swap list), then bump
`FTH_KIT_VERSION_CW` in `script_version.hpp`. See
[Kit Core's README](../../../@44th/addons/kit_core/README.md#editing-loadouts) for the full
workflow. If a weapon changes, also update the contents table in Supply Crates
CW's `fn_fillCrateCW.sqf`.

When pasting from an arsenal export, replace numbered radios (`TFAR_anprc152_7`)
with the plain `TFAR_anprc152`. A numbered radio is one specific radio instance,
so everyone on that kit would share it; the plain class gets each player their
own ID from TFAR at spawn.
