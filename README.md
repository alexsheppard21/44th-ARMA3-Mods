# 44th Battalion Framework

This repository contains **44th Battalion Framework** — the Arma 3 mod for the 44th Royal Battalion, a British-themed milsim unit part of the wider 44th Gaming Group. It bundles the unit's ORBAT, shared kit library, kit-selection crates, and supply crates into a single mod (`@44th`), built around our specific loadouts, structure, and playstyle.

The mod ships as four addons (PBOs) inside one launcher entry (`@44th/addons/`) and is designed to work alongside our standard mod pack. Each component keeps its own PBO prefix, so it can also be built and used standalone if needed.

---

## Units

| Unit | Role | Structure |
|---|---|---|
| **44 RBN** (Regular Battalion) | Conventional infantry backbone — frontline holding, area security, high-intensity combat | Traditional platoon: central Platoon HQ commanding fixed infantry sections |
| **44 Rangers** (The Cadre) | Force multipliers — training, mentoring, and leading local/partner forces rather than acting as a standard fighting element | Standalone 11-man command cadre; no internal subordinate sections |
| **44 SFSG** (Special Forces Strike Group) | The kinetic hammer — heavy offensive strikes, compound breaching, armour ambushes, airfield seizures | Self-contained 8-man section; Lead Section Commander holds total local authority |
| **44 SRR** (Special Reconnaissance Regiment) | Covert intelligence — "Find, not Fix." Long-range recon, SIGINT, and surveillance for strike elements; avoids direct combat | Very small autonomous teams (pairs or 4-man bricks) reporting direct to command |
| **44 SAS** (Special Air Service) | Tier 1 direct action — HVT elimination, hostage rescue, sabotage. Surgical precision, silent infiltration, gone before conventional units arrive | Independent 4-man bricks operating as a flexible Troop; HALO/helo insertion specialists |

---

## Components

The mod is built from four addons under [`@44th/addons/`](@44th/addons/):

### [Supply Crates](@44th/addons/supply_crates/)
[![Steam Workshop](https://img.shields.io/badge/Steam-Workshop-blue)](https://steamcommunity.com/sharedfiles/filedetails/?id=3742862207)

Adds pre-configured supply crates for each of the unit's sections and specialist roles. Crates appear in the Eden Editor under **44th Mods → Supply Crates**, making mission setup quick and consistent.

**Crates included:**
- Medical
- RANGER — Fire Support, Precision, Anti-Armour, Section (11-man)
- RBN — Sniper/Spotter Ammo, Section (8-man), EOD/Breaching
- SFSG — Fire Support, Precision, Section (8-man)
- SRR, SAS, SAS (Juliet)

**Requires:** CBA_A3, UK3CB BAF (ACE), ACE3

---

### [ORBAT](@44th/addons/orbat/)
[![Steam Workshop](https://img.shields.io/badge/Steam-Workshop-blue)](https://steamcommunity.com/sharedfiles/filedetails/?id=3743476647)

Adds the full 44th order of battle. The complete ORBAT places in one click as an Eden composition under **44th Mods → Compositions** — all slots playable with lobby descriptions grouped by section, loadouts baked in, and Zeus modules included. Individual units and sections are also available in the asset and group browsers. Each slot spawns already wearing its **full role loadout** (pulled from Kit Core), plus the correct rank and TFAR radio frequencies — no need to visit a kit crate first.

**Units included:**
- Regimental HQ — Lead Zeus, Co Zeus
- RBN — Platoon HQ, Zulu/Victor/Juliet sections
- RBN Support — Sappers, GPMG, Mortar, Javelin, Sniper team, Mailman
- Ranger — The Cadre (11-man), Mailman
- SFSG — HQ, Zulu/Victor/Romeo/Juliet sections, Mailman
- SRR — Recon Bricks 1–3, JSFAW
- SAS — Troop HQ, Bricks Zulu/Victor/Romeo/Juliet, JSFAW

**Requires:** CBA_A3, UK3CB BAF Units (ACE), 44th Kit Core

---

### [Kit Crates](@44th/addons/kit_crates/)
[![Steam Workshop](https://img.shields.io/badge/Steam-Workshop-blue)](https://steamcommunity.com/sharedfiles/filedetails/?id=3743245113)

Kit crates for browsing and customising loadouts. On a player's **first spawn** the kit menu auto-opens on a box scoped to their faction — they see every kit in their group but only their own role's kit is selectable, so other factions never clutter the UI. The **Master Kit Crate** likewise shows each player only the kit for their own ORBAT role. The per-faction crates remain for Zeus to re-role players on the fly. All loadouts come from Kit Core, so crate contents always match what players spawn with. Crates appear in the Eden Editor under **44th Mods → Kit Crates**.

**Crates included:**
- Master — every kit, filtered to the player's role
- RBN — Section roles + Platoon HQ
- RBN Support — Support weapons roles
- RANGER — SF team roles
- SFSG — Section roles
- SRR — Specialist roles
- SAS — Troop roles

**Requires:** CBA_A3, WBK Kits, Kit Core

---

### [Kit Core](@44th/addons/kit_core/)

The shared loadout library behind ORBAT spawn kitting and the kit crates — one source of truth for every role's loadout, plus kit version control that blocks out-of-date clients. A dependency of ORBAT and Kit Crates; ships no editor objects.

**Requires:** CBA_A3

---

## Author

FullMetalShep
