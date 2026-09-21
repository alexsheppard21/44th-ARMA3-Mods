# 44th Battalion Framework

This repository contains **44th Battalion Framework** — the Arma 3 mod for the 44th Royal Battalion, a British-themed milsim unit part of the wider 44th Gaming Group. It bundles the unit's ORBAT, shared kit library, kit-selection crates, and supply crates into a single mod (`@44th`), built around our specific loadouts, structure, and playstyle.

The framework ships as **three launcher entries**, split by what each part depends on. `@44th` holds the modpack-agnostic half (Kit Core, Kit Crates and the shared Logistics engine) and loads on any modlist. `@44th_BAF` holds the half built on 3CB BAF classes (ORBAT and Supply Crates) and loads only on the modern milsim pack. `@44th_SCIFI` holds the half built on OPTRE and TKE classes (UCNMC Supply Crates) and loads only on the SciFi pack.

The split exists because those addons inherit directly from `UK3CB_BAF_*` and `OPTRE_*` config classes. Config inheritance is resolved at load, so they cannot run without their modpack present — there is no runtime guard that can save them. Kit Core, Kit Crates and Logistics have no such tie: the kit crates derive from a vanilla box and fill themselves from `FTH_Kits` at runtime, and each faction's kits only register when that faction's mods are loaded.

Each component keeps its own PBO prefix, so it can still be built and used standalone if needed.

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

The framework is built from four addons across the two entries — two under [`@44th/addons/`](@44th/addons/) and two under [`@44th_BAF/addons/`](@44th_BAF/addons/):

### [Supply Crates](@44th_BAF/addons/supply_crates/) — `@44th_BAF`
[![Steam Workshop](https://img.shields.io/badge/Steam-Workshop-blue)](https://steamcommunity.com/sharedfiles/filedetails/?id=3742862207)

Adds pre-configured supply crates for each of the unit's sections and specialist roles. Crates appear in the Eden Editor under **44th Mods → Supply Crates**, making mission setup quick and consistent.

**Crates included:**
- Medical
- RANGER — Fire Support, Precision, Anti-Armour, Section (11-man)
- RBN — Sniper/Spotter Ammo, Section (8-man), EOD/Breaching
- SFSG — Fire Support, Precision, Section (8-man)
- SRR, SAS, SAS (Juliet)

Also adds the **44th Logistics Point** (**44th Mods → Logistics**) — a placeable
resupply point players work themselves. ACE-interact with it, pick a crate from
the categorised list, and it is delivered beside the point; no Zeus required. Any
object can be made into one from its init field with
`this setVariable ["FTH_logisticsPoint", true, true];`.

**Requires:** CBA_A3, UK3CB BAF (ACE), ACE3

---

### [ORBAT](@44th_BAF/addons/orbat/) — `@44th_BAF`
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

### [Kit Crates](@44th/addons/kit_crates/) — `@44th`
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

### [Supply Crates — SciFi](@44th_SCIFI/addons/supply_crates_scifi/) — `@44th_SCIFI`

Supply crates and a logistics point for the **44th Detachment, UCN Marine Corp** — the SciFi twin of the BAF supply crates, on OPTRE crate models. Crates appear in the Eden Editor under **44th Mods → Supply Crates**.

**Crates included:**
- UCNMC — 8-Man Section, Fire Support, Precision, Anti-Armour, Command (Bulldog)
- Medical

Contents come from the same UCNMC kits players spawn with, so crate and kit cannot drift apart. Also adds the **44th Logistics Point (UCNMC)** under **44th Mods → Logistics**.

**Requires:** CBA_A3, ACE3, Operation TREBUCHET, The Kuiper Engagements, 44th Logistics

---

### [Logistics](@44th/addons/logistics/) — `@44th`

The shared engine behind every logistics point: the ACE "Request Supplies" menu, server-side crate spawning, and runtime point registration. Ships no crates of its own — each supply-crate addon registers its catalogue at preInit, so the point works on a BAF night, a SciFi night, or both. A dependency of both supply-crate addons; ships no editor objects.

**Requires:** CBA_A3 (ACE optional)

---

### [Kit Core](@44th/addons/kit_core/) — `@44th`

The shared loadout library behind ORBAT spawn kitting and the kit crates — one source of truth for every role's loadout, plus kit version control that blocks out-of-date clients. A dependency of ORBAT and Kit Crates; ships no editor objects.

**Requires:** CBA_A3

---

## Author

FullMetalShep
