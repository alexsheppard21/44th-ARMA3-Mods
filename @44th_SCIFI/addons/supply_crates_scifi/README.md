# 44th Supply Crates — SciFi (UCNMC)

Arma 3 addon adding pre-configured supply crates for the **44th Detachment, UCN
Marine Corp**. Crates are placed directly in the Eden Editor under **44th Mods →
Supply Crates**, or requested in-game by players from a **Logistics Point**.

This is the SciFi twin of the BAF supply crates in `@44th_BAF`. It is a separate
launcher entry because the crates inherit from OPTRE crate models, and config
inheritance is resolved at load — they cannot exist on a modlist without OPTRE.

## Requirements

- [CBA_A3](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997)
- [ACE3](https://steamcommunity.com/sharedfiles/filedetails/?id=463939057)
- Operation TREBUCHET (crate models)
- The Kuiper Engagements (everything inside the crates)
- `@44th` — the shared logistics engine lives there

## Crates

Each crate does one job, so crates stay small and players only pull what they
need. Weapons come with the kits' attachments fitted but **no magazines** —
ammunition is always its own crate.

| Category | Crate | Contents | Model |
|---|---|---|---|
| UCNMC Weapons | Rifles | 2× MA32B, 2× MA5K, 1× M45 ATAC | Long |
| UCNMC Weapons | Marksman | 1× M392 DMR, 1× SRS99C, ballistics kit | Long |
| UCNMC Weapons | Support (SAW) | 2× M739 SAW, 2 spare barrels | Long |
| UCNMC Weapons | Launchers | 2× M41 SSR | Long |
| UCNMC Weapons | Sidearms | 3× UCN pistol, 2× M7 | Small |
| UCNMC Ammunition | Rifle | 30× MA32B/MA5K mags | Small |
| UCNMC Ammunition | Marksman / Sniper | DMR mags, SRS99 HVAP + APFSDS | Small |
| UCNMC Ammunition | Support (SAW) | 8× 192rnd boxes | Small |
| UCNMC Ammunition | Launcher | 4× M41 rockets | Small |
| UCNMC Ammunition | Sidearm | UCN pistol + M7 mags | Small |
| UCNMC Ammunition | Shotgun | 8 gauge pellets, slugs, HEDP | Small |
| UCNMC Ammunition | Grenades & Signals | frag, impact, smoke, signal smoke, chemlights, bags of bolts | Small |
| UCNMC Medical | Basic | bandages, tourniquets, chest seals, splints, morphine/epi/TXA | Small (Medical) |
| UCNMC Medical | Advanced (Corpsman) | IVs, plasma, airway, KAT drugs, oxygen, body bags | Small (Medical) |
| UCNMC Specialist | Engineer | C7/M168 charges, clackers, defusal, toolkit, mine detector | Small |
| UCNMC Specialist | Mines | AT, SLAM, AP, bounding, dispenser, IED | Small |
| UCNMC Specialist | Command (Bulldog) | binoculars, Androids, MicroDAGRs, map tools, radio packs | Small |
| UCNMC Specialist | Equipment | backpacks, cable ties, ear plugs, torches, slings, anomaly detectors | Small |

Every crate is filled by one script, `fn_fillCrateUCNMC.sqf`, from a contents
table keyed by crate class. The fill runs **on the server only** — the
`Extended_InitPost` hook fires on every machine, and the global cargo commands
would otherwise stack one copy of the contents per client.

Contents are drawn from the same UCNMC kits the players spawn with (Kit Core
SciFi's `data_UCNMC.sqf`), so a crate can never hand out ammunition for a weapon
nobody in the detachment carries. **When a kit's weapon changes, update the
matching entry in the contents table too** — nothing checks this automatically.

Most weapons are OPTRE (MA32B/MA5K, M392 DMR, M739 SAW, M41 SSR, SRS99C, M45
ATAC, M7); the UCN pistol, grenades and most gear are TKE. Coloured signal smoke
is vanilla — TKE ships frag, impact and white smoke only.

## Logistics Point

Place a **44th Logistics Point (UCNMC)** from **44th Mods → Logistics** and
players can resupply themselves: ACE hold-interact → **Request Supplies** →
category → crate. Any object can be made into one from its init field with

```sqf
this setVariable ["FTH_logisticsPoint", true, true];
```

The point, the menu and the crate spawning are handled by the shared engine in
`@44th/addons/logistics`; this addon only contributes its catalogue at preInit
(`fn_registerCratesSciFi.sqf`). Adding a crate is: add an `FTH_CRATE` and an
`FTH_FILL` line in `config.cpp`, add its contents to the table in
`fn_fillCrateUCNMC.sqf`, and add its classname to the catalogue.
