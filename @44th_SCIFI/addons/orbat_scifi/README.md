# 44th Sci-Fi ORBAT

The order of battle for the **44th Detachment, UCN Marine Corp**, as a one-click
Eden composition under **44th Mods → Compositions**.

## Structure

| Group | Slots |
|---|---|
| ZEUS | Game Master, Co-Game Master |
| Bulldog | Platoon Commander, Platoon Sergeant, Platoon Corpsman, Radio Operator, Combat Engineer |
| Zulu | Two 3-man fireteams (Squad Leader, Designated Marksman, Corpsman / Fireteam Leader, Automatic Rifleman (AT), Corpsman) |
| Victor | Identical to Zulu |
| Romeo | Two 4-man fireteams (Squad Leader, Scout Sniper, Automatic Rifleman, Corpsman / Fireteam Leader, Spotter, Automatic Rifleman, Corpsman) |
| Mailman | Aircraft Commander, Co-Pilot, Crew Chief, Vehicle Commander |

29 playable slots plus two Zeus, with vehicles and drop pods included.

## Kitting

Every playable slot carries an `FTH_kit` attribute holding its Kit Core role key
(`UCNMC_LanceLead`, `UCNMC_Marksman`, ...). On mission start that applies the
role's full loadout and tags the unit with `FTH_roleKey`, which is what makes the
on-spawn kit menu and the Master Kit Crate show the right kit.

The slots are placed as vanilla `B_Soldier_unarmed_F` on purpose: the kit supplies
the uniform, armour, helmet and weapon, so there is one source of truth for a
role's appearance rather than two. The two Zeus slots carry the Platoon Commander kit (`UCNMC_BulldogCommander`).

## Permissions and radios

Set per slot in the composition, matching the RBN platoon in the BAF ORBAT.

- **Corpsmen** (all seven, including the Platoon Corpsman) are ACE **Doctors**.
- **Combat Engineer** is an ACE **Advanced Engineer** and **Explosive Specialist**.

TFAR frequencies (short range / long range):

| Slots | SR | LR |
|---|---|---|
| Zeus, Platoon Commander, Radio Operator | 180 | 50, 42 |
| Platoon Sergeant | 180, 161 | 50, 42 |
| Platoon Corpsman | 180, 181 | — |
| Combat Engineer | 180 | — |
| Zulu / Victor / Romeo | 161.1 / 151.1 / 141.1 | — |
| Squad and Fireteam Leaders | squad net + 161 | 50 |
| Corpsmen | squad net + 181 | — |
| Mailman aircrew (1–3) | 142 | 42 |
| Mailman Vehicle Commander | 171 | — |

180 is the Bulldog net, 161 the platoon leaders' net, 181 the medical net, LR 50
command and LR 42 air.

If TKE is not loaded, Kit Core skips the UCNMC kits entirely and the slots spawn
as plain unarmed soldiers rather than half-kitted ones.

**Requires:** CBA_A3, 44th Kit Core, 44th Kit Core SciFi, The Kuiper Engagements, Operation TREBUCHET
