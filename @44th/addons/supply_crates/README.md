# 44th Supply Crates

**[Subscribe on Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3742862207)**

Arma 3 mod adding pre-configured supply crates for 44th Regiment loadouts. Crates are placed directly in the Eden Editor under **44th Mods → Supply Crates**, or requested in-game by players from a **Logistics Point**.

## Requirements

- [CBA_A3](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997)
- [UK3CB BAF Units (ACE)](https://steamcommunity.com/sharedfiles/filedetails/?id=2382830257)
- [ACE3](https://steamcommunity.com/sharedfiles/filedetails/?id=463939057)

## Crates

| Category | Crate |
|---|---|
| Medical | Medical Supplies |
| RANGER | Fire Support SME |
| RANGER | Precision SME |
| RANGER | Anti-Armour SME |
| RANGER | 11-Man Section Supplies |
| RBN | Sniper and Spotter Ammo |
| RBN | 8-Man Section Supplies |
| RBN | EOD/Breaching Supplies |
| SFSG | Fire Support Supplies |
| SFSG | Precision Supplies |
| SFSG | 8-Man Section Supplies |
| SRR | SRR Supplies |
| SAS | SAS Supplies |
| SAS | SAS Juliet Supplies |

## Logistics Point

Place a **44th Logistics Point** from **44th Mods → Logistics** and players can
resupply themselves: ACE hold-interact → **Request Supplies** → category → crate.
The crate is created server-side beside the point, pre-filled, and handed to Zeus
as an editable object. There is no cooldown or role restriction — anyone can
request anything.

Repeated requests are placed around the point (starting behind it) rather than
stacked on top of each other.

Any object can act as a logistics point. For editor-placed objects, put this in
the init field:

```sqf
this setVariable ["FTH_logisticsPoint", true, true];
```

For objects created at runtime (Zeus, scripts):

```sqf
[_object] call FTH_fnc_registerLogisticsPoint;
```

To change what is on offer, edit the catalogue in
[logistics_data.sqf](logistics_data.sqf) — crate names are read from their
configs, so a new crate only needs its classname adding to a category.

## Installation

This addon ships inside the **44th Battalion Framework** mod (`@44th`). Enable that
one mod in the launcher; crates then appear in the Eden Editor under
**44th Mods → Supply Crates** in the object browser.

## Author

FullMetalShep
