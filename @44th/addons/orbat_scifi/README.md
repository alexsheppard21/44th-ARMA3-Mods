# 44th Sci-Fi ORBAT

The order of battle for the **44th Detachment, UCN Marine Corp**, as a one-click
Eden composition under **44th Mods → Compositions**.

## Structure

| Group | Slots |
|---|---|
| ZEUS | Game Master, Co-Game Master |
| Bulldog | IC, 2iC, Corpsman, Comms |
| Zulu | Two 4-man fireteams (Lance Lead, Marksman, Heavy, Corpsman / Team Lead, Marksman, Heavy, Corpsman) |
| Victor | As Zulu, with Heavy AT in place of Heavy |
| Romeo | As Zulu, with Sniper and Spotter |
| Mailman | Chief Pilot, Pilot, Gunner, Vehicle Commander |

32 playable slots plus two Zeus, with vehicles and drop pods included.

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

**Requires:** CBA_A3, 44th Kit Core, The Kuiper Engagements, Operation TREBUCHET
