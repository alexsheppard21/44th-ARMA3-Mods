# 44th ORBAT

**[Subscribe on Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3743476647)**

Arma 3 mod adding the full 44th order of battle. The complete ORBAT is placed in one click as an Eden composition with playable slots, or individual units/sections can be placed from the asset and group browsers.

## Requirements

- [CBA_A3](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997)
- [UK3CB BAF Units (ACE)](https://steamcommunity.com/sharedfiles/filedetails/?id=2382830257)
- 44th Kit Core (shared loadout library — provides the spawn kits)

## Full ORBAT composition

Found in Eden under **44th Mods → Compositions → 44th Modern Milsim ORBAT**. Placing it gives the entire ORBAT exactly as configured:

- All slots **playable**, with lobby descriptions grouped by section (e.g. *Rifleman — Zulu Section*)
- **Full role loadouts applied on spawn** — each unit carries an `FTH_kit` attribute that pulls its loadout from 44th Kit Core, so players spawn kitted without visiting a crate (and are re-kitted on respawn)
- Loadouts stay editable within their parameters at the kit crates, and are covered by Kit Core's version control
- Zeus curator modules included for Lead/Co Zeus

This is the intended way to set up a mission — units placed from the asset or group browsers spawn as AI by default (an Eden engine limitation: configs cannot mark units playable), so the mission maker would need to set playability manually.

## Individual units

Units placed from the asset browser (**44th Mods**) or group browser are the legacy `_44th_` classes (the composition is now canonical). They spawn with:
- Their full role loadout from 44th Kit Core where a class mapping exists, otherwise a base fallback (MTP uniform + role headgear)
- Rank set automatically
- TFAR SR/LR radio frequencies pre-configured for their section net

Zeus units (Lead Zeus, Co Zeus) additionally receive a game master module assigned on spawn — no pre-placed module needed. The curator refreshes its editable objects periodically, so mid-mission spawns stay Zeus-editable.

## Units

### Regimental HQ
| Class | Role |
|---|---|
| Lead Zeus | COLONEL — Game Master |
| Co Zeus | MAJOR — Game Master |

### RBN
| Class | Role |
|---|---|
| Platoon Commander | Platoon HQ |
| Platoon Sergeant | Platoon HQ |
| Platoon Signaller | Platoon HQ |
| Platoon Medic | Platoon HQ |
| Platoon UAV Operator | Platoon HQ |
| Section Commander (Zulu/Victor/Juliet) | Section lead |
| Section 2IC (Zulu/Victor/Juliet) | |
| Sharpshooter (Zulu/Victor/Juliet) | |
| Grenadier (Zulu/Victor/Juliet) | |
| Team Medic (Zulu/Victor/Juliet) | |
| Machine Gunner (Zulu/Victor/Juliet) | |
| Rifleman (Zulu/Victor/Juliet) | |

### RBN Support
| Class | Role |
|---|---|
| Engineer | Sappers |
| Breacher | Sappers |
| GPMG Gunner / Assistant | Fire support |
| Mortar Gunner / Assistant | Indirect fire |
| Javelin Gunner / Assistant | Anti-armour |
| Sniper / Anti-Material Sniper / Spotter | Precision |
| Crewman / Pilot | Mailman |

### Ranger
| Class | Role |
|---|---|
| Team Commander | |
| Team Sergeant | |
| Joint Fires Observer | |
| Partner Liaison | |
| UAS Operator | |
| EW Operator | |
| Team Medic | |
| Lead Breacher | |
| Lead Scout | |
| Support Operator | |
| Crewman / Pilot | Mailman |

### SFSG

Command element **Bulldog**, three assault sections (Zulu/Victor/Romeo), and a
support/weapons section (Juliet) split into two fire teams (SR 242 / SR 243).

| Class | Role |
|---|---|
| Platoon Commander | Command (Bulldog) |
| HQ Drone Operator / RTO | Command (Bulldog) |
| Section Commander (Zulu/Victor/Romeo) | Section lead |
| Section 2iC (Zulu/Victor/Romeo) | |
| Lead Assaulter / Pointman (Zulu/Victor/Romeo) | |
| Section Grenadier (Zulu/Victor/Romeo) | |
| Section Medic (Zulu/Victor/Romeo) | |
| Section Gunner (Zulu/Victor/Romeo) | |
| Section Sharpshooter (Zulu/Victor/Romeo) | |
| Anti-Tank Rifleman (Zulu/Victor/Romeo) | |
| Support Section Commander (Juliet) | Support lead |
| Section Support 2iC (Juliet) | |
| Heavy Support Gunner ×2 (Juliet) | |
| Assistant Gunner / Ammo Bearer (Juliet) | |
| Anti-Tank Specialist ×2 (Juliet) | #1 Javelin, #2 MRAWS |
| Support Section Medic (Juliet) | |

Every role has a dedicated loadout in 44th Kit Core, so all slots spawn kitted.
The two Heavy Support Gunners share the L7A2 kit; the two Anti-Tank Specialists
differ — #1 carries a Javelin, #2 a MRAWS.

### SRR
| Class | Role |
|---|---|
| Surveillance Specialist | Brick 1 |
| SIGINT Specialist | Brick 1 |
| Technical Specialist | Brick 1 |
| Advanced Medic | Brick 1 |
| Sniper | Brick 2 |
| Spotter | Brick 2 |
| Drone Carrier | Brick 2 |
| Point Man | Brick 3 |
| Tech Exploitation Specialist | Brick 3 |
| Capture Specialist | Brick 3 |
| Cover Man | Brick 3 |
| JSFAW Pilot | |

### SAS
| Class | Role |
|---|---|
| Troop Sergeant | Troop HQ |
| Team Lead (Zulu/Romeo) | |
| Lead Scout (Zulu/Romeo) | |
| Point Man (Zulu/Romeo) | |
| Medic (Zulu/Romeo) | |
| Team Lead (Victor) | |
| Signaller | Victor |
| Marksman | Victor |
| Specialist | Victor |
| Sniper | Juliet |
| Spotter | Juliet |
| Support Gunner | Juliet |
| Drone Carrier | Juliet |
| JSFAW Pilot | |

## Installation

This addon ships inside the **44th Battalion Framework** mod (`@44th`). Enable that
one mod in the launcher, then in Eden Editor place the full ORBAT from
**44th Mods → Compositions**, or find individual units under **44th Mods** in the
asset browser and full sections in the group browser.

## Author

FullMetalShep
