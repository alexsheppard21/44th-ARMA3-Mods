# 44th Berets — Cold War

The CWR3 beret with the 44th cap badge, one colour per role type. They are options
in the kit menu, each only on the kits that already wear that colour; default kits
still wear the regimental berets, and Pilots get none.

| Name in game | Colour | Class | Kit menu | Texture |
|---|---|---|---|---|
| 44th Beret (SF) | Sand | `_44th_Beret_Sand_CW` | None yet | `data/44th_beret_sand_co.paa` |
| 44th Beret (Infantry) | Khaki | `_44th_Beret_Khaki_CW` | Mechanised Infantry | `data/44th_beret_khaki_co.paa` |
| 44th Beret (Commando) | Sea green | `_44th_Beret_SeaGreen_CW` | Royal Marines | CWR3 |
| 44th Beret (Support) | Blue | `_44th_Beret_Blue_CW` | None yet | CWR3 (dark blue) |
| 44th Beret (Paratrooper) | Maroon | `_44th_Beret_Maroon_CW` | 2 Para | CWR3 |
| 44th Beret (Light Inf) | Green | `_44th_Beret_Green_CW` | Mechanised Infantry | CWR3 |
| 44th Beret (Armoured) | Black | `_44th_Beret_Black_CW` | Crew Commander, Crew | CWR3 |

The CWR3 beret keeps its colour and badge in separate textures, so all seven share
`data/44th_beret_badge_ca.paa`: a 1024×1024 texture with the badge in the same
place as CWR3's own. To change the badge, replace that file. Keep it dark: the game
brightens these textures about 2× under light, so an average brightness of about
80 renders as silver, and anything near white blows out. Keep it under about 190
wide on a 512 scale, or the edges wrap around the curve of the beret.

CWR3 has no sand or khaki for this model, so those two are recolours of its grey
texture: only the wool changes, the leather band is left alone.

**Requires:** Cold War Rearmed III, Cold War Rearmed III - British Armed Forces
