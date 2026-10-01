# 44th Sci-Fi ORBAT

The order of battle for the **44th Detachment, UCN Marine Corp**, as a one-click
Eden composition under **44th Mods → Compositions**.

## Structure

| Group | Slots |
|---|---|
| ZEUS | Game Master, Co-Game Master |
| Bulldog | Platoon Commander, Platoon Sergeant, Platoon Corpsman, Radio Operator, Combat Engineer |
| Zulu | Two 4-man fireteams (Squad Leader, Designated Marksman, Automatic Rifleman, Corpsman / Fireteam Leader, Designated Marksman, Automatic Rifleman, Corpsman) |
| Victor | As Zulu, with Automatic Riflemen (AT) in place of the Automatic Riflemen |
| Romeo | As Zulu, with a Scout Sniper and Spotter |
| Mailman | Aircraft Commander, Co-Pilot, Crew Chief, Vehicle Commander |

33 playable slots plus two Zeus, with vehicles and drop pods included.

## Kitting

Every playable slot carries an `FTH_kit` attribute holding its Kit Core role key
(`UCNMC_LanceLead`, `UCNMC_Marksman`, ...). On mission start that applies the
role's full loadout and tags the unit with `FTH_roleKey`, which is what makes the
on-spawn kit menu and the Master Kit Crate show the right kit.

The slots are placed as vanilla `B_Soldier_unarmed_F` on purpose: the kit supplies
the uniform, armour, helmet and weapon, so there is one source of truth for a
role's appearance rather than two. The Zeus slots carry no kit.

If TKE is not loaded, Kit Core skips the UCNMC kits entirely and the slots spawn
as plain unarmed soldiers rather than half-kitted ones.

**Requires:** CBA_A3, 44th Kit Core, 44th Kit Core SciFi, The Kuiper Engagements, Operation TREBUCHET
