# 44th Supply Crates — Cold War

Arma 3 addon adding pre-configured supply crates for the 44th's Cold War modlist.
Crates are placed directly in the Eden Editor under **44th Mods → Supply Crates**,
or requested in-game by players from a **Logistics Point**.

This is a separate launcher entry because the crates inherit from CWR3 crate
models, and config inheritance is resolved at load — they cannot exist on a
modlist without CWR3.

## Requirements

- [CBA_A3](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997)
- [ACE3](https://steamcommunity.com/sharedfiles/filedetails/?id=463939057)
- Cold War Rearmed III (crate models)
- Spearpoint Alpha (most of what's inside the crates)
- CUP Weapons (the flare pistol)
- `@44th` — the shared logistics engine lives there

## Crates

Each crate does one job, so crates stay small and players only pull what they
need. Weapons come with the kits' attachments fitted but **no magazines** —
ammunition is always its own crate. The LAW 66 is the exception: it is
single-shot, so it ships loaded. All three companies carry the same weapons and
share one catalogue.

| Category | Crate | Contents | Model |
|---|---|---|---|
| CW Weapons | Rifles (SLR) | 4× L1A1 SLR | Basic Weapons |
| CW Weapons | LMG (L4) | 2× L4 LMG, 2 spare barrels | Basic Weapons |
| CW Weapons | GPMG (L7) | 2× L7A1 GPMG, 2 spare barrels | Basic Weapons |
| CW Weapons | Launchers | 4× LAW 66, 1× L14A1 Carl Gustav | Launchers |
| CW Weapons | 2 Inch Mortar | 1× 2 inch mortar, plotting board | Launchers |
| CW Weapons | Sidearms | 4× L9A1 Hi-Power | Basic Weapons |
| CW Ammunition | Rifle | 15× 20rnd ball, 15× 20rnd tracer | Basic Ammo |
| CW Ammunition | LMG | 8× 28rnd, 16× 28rnd white | Basic Ammo |
| CW Ammunition | GPMG | 6× 200rnd, 4× 100rnd belts | Basic Ammo |
| CW Ammunition | Carl Gustav | 6× HEAT, 2× HE, 2× WP | Basic Ammo |
| CW Ammunition | 2 Inch Mortar | HE, WP, smoke, flare, red and green signal | Basic Ammo |
| CW Ammunition | Sidearm | 16× 13rnd | Basic Ammo |
| CW Ammunition | Grenades & Signals | L2A1 frag, smoke, coloured smoke, hand flares | Grenades |
| CW Medical | Basic | bandages, tourniquets, splints, chest seals, morphine/epi, IVs, plasma | ACE Medical |
| CW Medical | Advanced (Medic) | one Medic's bergen: airway, KAT drugs, oxygen, AED, surgical kit, body bags | ACE Medical |
| CW Specialist | Engineer | charges, breaching, clackers, defusal, mine detector, toolkit | Explosives |
| CW Specialist | Command (Bulldog) | binoculars, map tools, plotting boards, radios, radio packs | Support |
| CW Specialist | Equipment | packs, ear protection, entrenching tools, bayonets, toolkits, cigarettes | Support |
| CW Specialist | Flare Pistols | 2× flare pistol, 12× white, 2× red and 2× green illumination, 4× red and 4× green signal | Support |

Every crate is filled by one script, `fn_fillCrateCW.sqf`, from a contents table
keyed by crate class. The fill runs **on the server only** — the
`Extended_InitPost` hook fires on every machine, and the global cargo commands
would otherwise stack one copy of the contents per client.

Contents are drawn from the same kits the players spawn with (Kit Core CW's
`data_CW*.sqf`), so a crate can never hand out ammunition for a weapon nobody
carries. **When a kit's weapon changes, update the matching entry in the contents
table too** — nothing checks this automatically.

The Carl Gustav illumination round is left out of the kits and the ammo crate on
purpose: Spearpoint's `sp_carlg_1rnd_illum` is unfinished. It is missing from the
L14A1's magazine well, and the flare it releases does not exist. Illumination
comes from the 2 inch mortar instead, or from the Flare Pistols crate. No kit
carries a flare pistol: it takes the sidearm slot, so it is an optional pick-up.

## Logistics Point

Place a **44th Logistics Point (Cold War)** from **44th Mods → Logistics** and
players can resupply themselves: ACE hold-interact → **Request Supplies** →
category → crate.

The point is the vanilla ammo slingload container, so it moves by helicopter
sling only: ACE cargo loading is turned off on it. Its stock is removed, but it
keeps the container's vehicle rearm supply.

Any object can be made into a point from its init field with

```sqf
this setVariable ["FTH_logisticsPoint", true, true];
```

The point, the menu and the crate spawning are handled by the shared engine in
`@44th/addons/logistics`; this addon only contributes its catalogue at preInit
(`fn_registerCratesCW.sqf`). Adding a crate is: add an `FTH_CRATE` and an
`FTH_FILL` line in `config.cpp`, add its contents to the table in
`fn_fillCrateCW.sqf`, and add its classname to the catalogue.
