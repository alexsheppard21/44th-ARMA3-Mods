# 44th Cold War ORBAT

The order of battle for the 44th's Cold War modlist (1960–1980), as a one-click
Eden composition under **44th Mods → Compositions**. Composition by Rydelta,
converted to run off Kit Core.

It holds three full companies side by side so a mission maker can keep the one
the operation calls for and delete the rest; the callsigns repeat between them.

## Structure

**Royal Marines** (35 slots)

| Group | Slots |
|---|---|
| Bulldog | Plt. IC, Plt. RTO, 3× Medic |
| Zulu / Victor / Romeo | Section IC, LMG No.1, LMG No.2, 2× Rifleman, Section 2IC, GPMG No.1, GPMG No.2 |
| Juliet | Plt. SGT, Engineer, Mortar No.1, Mortar No.2, HAT No.1, HAT No.2 |

**2 Para** and **Mechanised Infantry** (32 slots each)

| Group | Slots |
|---|---|
| Bulldog | Plt. IC, Plt. RTO |
| Zulu / Victor / Romeo | Section IC, Medic, 3× Rifleman, Section 2IC, GPMG No.1, GPMG No.2 |
| Juliet | Plt. SGT, Engineer, Mortar No.1, Mortar No.2, HAT No.1, HAT No.2 |

**Shared** (14 slots)

| Group | Slots |
|---|---|
| Regimental Command | GHQ, Zeus (both curators) |
| Mailman | 4× Pilot |
| Anvil 1-1 / 1-2 | Crew Commander, Crew Driver, Crew Gunner, Crew Loader |

113 playable slots in all, with vehicles and a **44th Logistics Point (Cold
War)**.

This addon also adds the **44th Master Kit Crate (Cold War)** under **44th Mods →
Kit Crates**. It holds every Cold War kit but shows each player only their own.

## Kitting

Every playable slot carries an `FTH_kit` attribute holding its Kit Core role key.
On mission start that applies the role's full loadout and tags the unit with
`FTH_roleKey`, which is what makes the on-spawn kit menu and the Master Kit Crate
show the right kit.

The slots are placed as vanilla `B_Soldier_unarmed_F` on purpose: the kit supplies
everything, so there is one source of truth for a role's appearance rather than
two. The two Regimental Command slots carry the Royal Marines Platoon IC kit
(`CWRM_PlatoonIC`). All Crew Driver, Gunner and Loader slots share one Crew kit.

If Spearpoint is not loaded, Kit Core skips the infantry kits entirely and the
slots spawn as plain unarmed soldiers rather than half-kitted ones.

## Permissions and radios

Set per slot in the composition, the same in all three companies.

- **Medics** are ACE **Medics**.
- **Engineers** are ACE **Engineers** and **Explosive Specialists**.

TFAR frequencies (short range / long range):

| Slots | SR | LR |
|---|---|---|
| GHQ | 161 | 50, 42 |
| Plt. IC, Plt. RTO | 180, 161 | 50, 42 |
| Zulu / Victor / Romeo IC and 2IC | 161.1 / 151.1 / 141.1, plus 161 | 50 |
| Plt. SGT | 171.1, 161 | 50 |
| Anvil Commanders | 130 | 42 |
| Anvil Crew | 130 | — |
| Mailman | 140 | 42 |

Slots whose kit carries no radio have no frequencies set.

**Requires:** CBA_A3, 44th Kit Core, 44th Kit Crates, 44th Logistics, Kit Core CW,
Supply Crates CW, Spearpoint Alpha, Cold War Rearmed III, Cold War Rearmed III -
British Armed Forces
