# 44th Berets — Cold War

The CWR3 beret with the 44th cap badge, in six colours. All six are options in the
kit menu on every Cold War kit; the default kits still wear the regimental berets.

| Class | Colour | Texture |
|---|---|---|
| `_44th_Beret_Sand_CW` | Sand | `data/44th_beret_sand_co.paa` |
| `_44th_Beret_Maroon_CW` | Maroon | CWR3 |
| `_44th_Beret_Green_CW` | Green | CWR3 |
| `_44th_Beret_Black_CW` | Black | CWR3 |
| `_44th_Beret_Blue_CW` | Blue | CWR3 (dark blue) |
| `_44th_Beret_Khaki_CW` | Khaki | `data/44th_beret_khaki_co.paa` |

The CWR3 beret keeps its colour and badge in separate textures, so all six share
`data/44th_beret_badge_ca.paa`: a 1024×1024 texture with the badge in the same
place as CWR3's own. To change the badge, replace that file. Keep it dark: the game
brightens these textures about 2× under light, so an average brightness of about
80 renders as silver, and anything near white blows out. Keep it under about 190
wide on a 512 scale, or the edges wrap around the curve of the beret.

CWR3 has no sand or khaki for this model, so those two are recolours of its grey
texture: only the wool changes, the leather band is left alone.

**Requires:** Cold War Rearmed III, Cold War Rearmed III - British Armed Forces
