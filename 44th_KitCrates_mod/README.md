# 44th Kit Crates

**[Subscribe on Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3743245113)**

Arma 3 mod providing kit crates for the 44th. Players normally spawn already kitted (via 44th ORBAT + Kit Core); these crates are for **customising within a role's allowed parameters** and for **re-roling**.

- **Master Kit Crate** — holds every kit but shows each player only the one matching their ORBAT role (`FTH_roleKey`). This is the crate players interact with to tweak their loadout.
- **Per-faction crates** (RBN, RBN Support, RANGER, SFSG, SRR, SAS) — show all of that faction's kits. Kept mainly for Zeus to re-role players on the fly.

All loadouts are read from **44th Kit Core** (`FTH_Kits`), so crate contents always match what players spawn with. Crates are placed in the Eden Editor under **44th Mods → Kit Crates**.

## Requirements

- [CBA_A3](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997)
- Warbird
- 44th Kit Core

If Warbird or Kit Core is not loaded, crates simply stay empty (the fill script times out safely after 60 seconds).

## Crates

### RBN Kit Crate
**44 RBN — Regular Battalion**

Conventional infantry backbone. Tasked with frontline holding, area security, and high-intensity combat. Operated as a traditional platoon — central HQ commanding fixed infantry sections. Best suited to defensive holds, convoy ops, and attrition-based engagements.

Roles: Rifleman, Grenadier, Team Medic, Machine Gunner, Sharpshooter, Section 2IC, Section Commander, Platoon Signaller, Platoon Medic, Platoon Commander, Platoon Sergeant, Platoon UAV Operator

---

### RBN Support Kit Crate
**44 RBN — Support Weapons**

Heavy weapons and specialist support roles that reinforce RBN sections with sustained fire, indirect fire, and anti-armour capability. Distinct from the standard section crate to ensure support weapon operators load the correct specialist kit.

Roles: Engineer, Breacher, GPMG Gunner, GPMG Assistant, Mortar Gunner, Mortar Assistant, Javelin Gunner, Javelin Assistant, Sniper, Sniper Anti-Material, Spotter, Crewman, Pilot

---

### RANGER Kit Crate
**44 Rangers — The Cadre**

Force multipliers, not a standard fighting unit. An 11-man command cadre that trains, mentors, and leads local or partner forces. No internal subordinate sections — they manage and coordinate. Suited to asymmetric operations, electronic warfare, and coordination-heavy engagements.

Roles: Support Operator, Lead Scout, Lead Breacher, Joint Fires Observer, Team Medic, UAS Operator, EW Operator, Partner Liaison, Team Commander, Team Sergeant, Crewman, Pilot

---

### SFSG Kit Crate
**44 SFSG — Special Forces Strike Group**

The kinetic hammer. A self-contained 8-man section built for heavy offensive operations — compound breaching, armour ambushes, airfield seizures. No platoon HQ; the Section Lead holds complete local authority.

Roles: Section Lead, Point Man, Lead Breacher, Section Medic, Section 2iC, Section Gunner (L7A2), Section Gunner (L110A3), Sharpshooter, Rifleman (AT), Platoon Sergeant, Sniper, Spotter, Crewman, Pilot

---

### SRR Kit Crate
**44 SRR — Special Reconnaissance Regiment**

Covert intelligence specialists operating under a "Find, not Fix" mandate. Small autonomous teams (pairs or 4-man bricks) gathering real-time surveillance and intelligence for strike elements while strictly avoiding direct combat.

Roles: Sniper, Spotter, Drone Carrier, Surveillance Specialist, SIGINT Specialist, Technical Specialist, Advanced Medic, Point Man, Technical Exploitation Specialist, Capture Specialist, Cover Man, JSFAW Pilot

---

### SAS Kit Crate
**44 SAS — Special Air Service**

Tier 1 direct action. Independent 4-man bricks deployed for HVT elimination, hostage rescue, and sabotage. Silent infiltration, surgical CQB, then gone before conventional forces arrive.

Roles: Troop Sergeant, Team Lead, Team Lead 2, Lead Scout, Point Man, Medic, Signaller, Marksman, Specialist, Support Gunner, Sniper, Spotter, Drone Carrier, JSFAW Pilot

---

## Installation

1. Copy the `@44th_KitCrates` folder into your Arma 3 directory.
2. Enable the mod in the Arma 3 launcher.
3. In Eden Editor, find crates under **44th Mods → Kit Crates** in the object browser.

## Author

FullMetalShep
