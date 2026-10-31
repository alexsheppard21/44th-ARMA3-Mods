// Hand-exported for the 44th's Cold War modlist (Spearpoint / CWR3).
// Faction: CWCREW - Mailman aircrew and Anvil armour crews. 3 kits, shared by
// all three companies, plain setUnitLoadout format.
//
// Shared across every CW kit:
//   Radios are the plain TFAR_anprc152 prototype: TFAR hands each player their
//   own radio ID at spawn. Do not paste numbered radios (TFAR_anprc152_7) out
//   of an arsenal export, every player on that kit would share one radio.
//   Medical is ACE + KAT (kat_* items); cigs_* and tsp_breach_* come from 44th
//   Core, not from a Cold War mod.
//   The second array on each kit is the allowed-swap list for the kit menu.

["CWCREW_Pilot", "Pilot", "CWCREW",
  [[],[],["sp_l9a1_hipower","","","",["SP_13Rnd_9mm_HiPower",13],[],""],["cwr3_b_uk_uniform_pilot",[["ACE_EarPlugs",1],["ACE_EHP",1],["ACE_elasticBandage",10],["kat_IV_16",2],["ACE_plasmaIV_500",2],["ACE_splint",2],["ACE_tourniquet",4],["ACE_morphine",3],["ACE_epinephrine",3]]],["cwr3_b_vest_pilot",[["ToolKit",1],["ACE_Clacker",1],["SP_13Rnd_9mm_HiPower",4,13],["ACE_HandFlare_Red",1,1],["SmokeShellGreen",2,1],["SmokeShell",2,1]]],["TFAR_rt1523g",[["DemoCharge_Remote_Mag",2,1]]],"cwr3_b_headgear_pilot","",["Binocular","","","",[],[],""],["ItemMap","","TFAR_anprc152","ItemCompass","ItemWatch",""]],
  ["G_Aviator","SP_Moustache","SP_Moustache_Brown","SP_Moustache_Ginger","_44th_Beret_Sand_CW","_44th_Beret_Maroon_CW","_44th_Beret_Green_CW","_44th_Beret_Black_CW","_44th_Beret_Blue_CW","_44th_Beret_Khaki_CW"]
] call _reg;

["CWCREW_CrewCommander", "Crew Commander", "CWCREW",
  [[],[],["sp_l9a1_hipower","","","",["SP_13Rnd_9mm_HiPower",13],[],""],["cwr3_i_uniform_coverall_grey",[["ACE_elasticBandage",10],["ACE_plasmaIV_500",2],["ACE_splint",2],["ACE_tourniquet",4],["kat_larynx",2],["ACE_morphine",2],["ACE_epinephrine",2],["kat_IV_16",2],["kat_chestSeal",2],["cigs_lighter",1,100],["cigs_morley_cigpack",1,20],["SP_13Rnd_9mm_HiPower",1,13]]],["cwr3_b_vest_pasgt_alice_od_crew",[["ToolKit",1]]],["TFAR_rt1523g",[["SP_13Rnd_9mm_HiPower",4,13],["ACE_HandFlare_Red",1,1],["SmokeShellGreen",2,1],["SmokeShell",2,1]]],"cwr3_b_uk_headgear_beret_headset_tank","",[],["ItemMap","","TFAR_anprc152","ItemCompass","ItemWatch",""]],
  ["cwr3_b_headgear_cvc_goggles","SP_Moustache","SP_Moustache_Brown","SP_Moustache_Ginger","cwr3_b_headgear_cvc","_44th_Beret_Sand_CW","_44th_Beret_Maroon_CW","_44th_Beret_Green_CW","_44th_Beret_Black_CW","_44th_Beret_Blue_CW","_44th_Beret_Khaki_CW"]
] call _reg;

["CWCREW_Crew", "Crew", "CWCREW",
  [[],[],["sp_l9a1_hipower","","","",["SP_13Rnd_9mm_HiPower",13],[],""],["cwr3_i_uniform_coverall_grey",[["ACE_elasticBandage",10],["ACE_plasmaIV_500",2],["ACE_splint",2],["ACE_tourniquet",4],["kat_larynx",2],["ACE_morphine",2],["ACE_epinephrine",2],["kat_IV_16",2],["kat_chestSeal",2],["cigs_lighter",1,100],["cigs_morley_cigpack",1,20],["SP_13Rnd_9mm_HiPower",1,13]]],["cwr3_b_vest_pasgt_alice_od_crew",[["ToolKit",1]]],[],"cwr3_b_uk_headgear_beret_headset_tank","",[],["ItemMap","","TFAR_anprc152","ItemCompass","ItemWatch",""]],
  ["cwr3_b_headgear_cvc_goggles","SP_Moustache","SP_Moustache_Brown","SP_Moustache_Ginger","cwr3_b_headgear_cvc","_44th_Beret_Sand_CW","_44th_Beret_Maroon_CW","_44th_Beret_Green_CW","_44th_Beret_Black_CW","_44th_Beret_Blue_CW","_44th_Beret_Khaki_CW"]
] call _reg;
