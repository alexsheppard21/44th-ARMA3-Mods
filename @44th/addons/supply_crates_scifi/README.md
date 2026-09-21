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

| Category | Crate | Model |
|---|---|---|
| UCNMC | 8-Man Section Supplies | UNSC Marines weapon crate |
| UCNMC | Fire Support Supplies | UNSC Marines heavy-weapons crate |
| UCNMC | Precision Supplies | UNSC Marines long-range crate |
| UCNMC | Anti-Armour Supplies | UNSC Marines heavy-weapons crate |
| UCNMC | Command (Bulldog) Supplies | UNSC weapons rack |
| Medical | UCNMC Medical Supplies | UNSC ammunition rack |

Contents are drawn from the same UCNMC kits the players spawn with (Kit Core's
`data_UCNMC.sqf`), so a crate can never hand out ammunition for a weapon nobody
in the detachment carries.

Two calibres come from outside TKE, because TKE's own weapons inherit from them:
the AT-9x takes vanilla MRAWS rounds, and the UCN sniper rifle takes vanilla
12.7 rounds. Coloured signal smoke is vanilla too — TKE ships frag, impact and
white smoke only.

## Logistics Point

Place a **44th Logistics Point (UCNMC)** from **44th Mods → Logistics** and
players can resupply themselves: ACE hold-interact → **Request Supplies** →
category → crate. Any object can be made into one from its init field with

```sqf
this setVariable ["FTH_logisticsPoint", true, true];
```

The point, the menu and the crate spawning are handled by the shared engine in
`@44th/addons/logistics`; this addon only contributes its catalogue at preInit
(`fn_registerCratesSciFi.sqf`). Adding a crate is: define it in `config.cpp`,
write its fill script, add its classname to the catalogue.
