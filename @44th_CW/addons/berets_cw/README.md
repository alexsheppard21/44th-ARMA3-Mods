# 44th Berets — Cold War

The TRF British Army beret (shape V1) with the 44th cap badge, one colour per role
type. They are options in the kit menu, each only on the kits that already wear that
colour; default kits still wear the regimental berets, and Pilots get none.

| Name in game | Colour | Class | Kit menu | Texture |
|---|---|---|---|---|
| 44th Beret (SF) | Sand | `_44th_Beret_Sand_CW` | None yet | `data/44th_beret_sand_co.paa` |
| 44th Beret (Infantry) | Khaki | `_44th_Beret_Khaki_CW` | Mechanised Infantry | `data/44th_beret_khaki_co.paa` |
| 44th Beret (Commando) | Sea green | `_44th_Beret_SeaGreen_CW` | Royal Marines | `data/44th_beret_seagreen_co.paa` |
| 44th Beret (Support) | Blue | `_44th_Beret_Blue_CW` | None yet | `data/44th_beret_blue_co.paa` |
| 44th Beret (Paratrooper) | Maroon | `_44th_Beret_Maroon_CW` | 2 Para | `data/44th_beret_maroon_co.paa` |
| 44th Beret (Light Inf) | Green | `_44th_Beret_Green_CW` | Mechanised Infantry | `data/44th_beret_green_co.paa` |
| 44th Beret (Armoured) | Black | `_44th_Beret_Black_CW` | Crew Commander, Crew | `data/44th_beret_black_co.paa` |

All seven share `beret.p3d` (already binarized, so pack it as it is) and
`data/beret.rvmat` with its `_nohq`, `_smdi` and `_as` textures. The badge is baked
into each colour texture, over the left eye. The TRF pack has no colour textures, so
the wool, mottling and dark band are generated to match its preview sheet, and five
colours are sampled from that sheet; it has no sand or sea green, so those two are
set by hand. Keep textures dark: the game brightens them about 2× under light.

V1's forehead fold cut into the Arma head, so the visible wool and band are pushed
out up to about 15 mm there, blended into the rest of the shape. The other shapes,
the caubeen and the tam o' shanter are not used.

**Requires:** Cold War Rearmed III, Cold War Rearmed III - British Armed Forces
