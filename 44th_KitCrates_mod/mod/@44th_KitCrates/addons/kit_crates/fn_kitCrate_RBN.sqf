private _timeout = time + 60;
waitUntil { !isNil "Wbk_AddKit" || time > _timeout };
if (isNil "Wbk_AddKit") exitWith {};
clearWeaponCargoGlobal _this;
clearMagazineCargoGlobal _this;
clearItemCargoGlobal _this;
clearBackpackCargoGlobal _this;

[   
_this,   
"Rifleman",   
[["UK3CB_BAF_L85A3_AFG_T","UK3CB_BAF_SFFH","MCC_VarioRay_IRL","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd",30],[],"UK3CB_underbarrel_acc_afg_t"],[],[],["TRF_PCS_FS_NG_U",[["kat_IV_16",1],["ACE_adenosine",2],["ACE_elasticBandage",8],["ACE_packingBandage",8],["kat_chestSeal",2],["ACE_epinephrine",4],["ACE_morphine",2],["kat_naloxone",1],["ACE_splint",1],["kat_Painkiller",2,4],["cigs_lucky_strike_cigpack",1,20],["cigs_matches",1,10]]],["TRF_STV_Rifleman",[["ACE_tourniquet",4],["ACE_CableTie",2],["UK3CB_BAF_556_30Rnd",7,30],["rhs_mag_m67",2,1],["UK3CB_BAF_SmokeShell",1,1],["UK3CB_BAF_SmokeShellRed",1,1],["acex_intelitems_notepad",1,1],["Chemlight_green",1,1],["Chemlight_red",1,1]]],["Invisi_Small_bp",[["ACE_EntrenchingTool",1],["ACE_plasmaIV_500",1],["Kestrel_BLK_SF_U_C",1],["ACE_EarPlugs",1],["ACE_EHP",1],["tsp_sling",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["UK3CB_BAF_Bayonet_L3A1",1],["UK3CB_BAF_762_100Rnd",1,100]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_STRIP_SCRIM","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_STV_Rifleman","TRF_STV_Rifleman_2","TRF_STV_Rifleman_3","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit; 

[   
_this,   
"Grenadier",   
[["UK3CB_BAF_L85A3_UGL","UK3CB_BAF_SFFH","MCC_VarioRay_IRL","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd",30],[],""],[],[],["TRF_PCS_FS_NG_U",[["kat_IV_16",1],["ACE_adenosine",2],["ACE_elasticBandage",8],["ACE_packingBandage",8],["kat_chestSeal",2],["ACE_epinephrine",4],["ACE_morphine",2],["kat_naloxone",1],["ACE_splint",1],["kat_Painkiller",2,4],["cigs_lucky_strike_cigpack",1,20],["cigs_matches",1,10]]],["TRF_STV_Grenadier",[["ACE_tourniquet",4],["ACE_CableTie",2],["rhs_mag_m67",2,1],["UK3CB_BAF_SmokeShell",1,1],["acex_intelitems_notepad",1,1],["Chemlight_green",1,1],["Chemlight_red",1,1],["UK3CB_BAF_556_30Rnd",5,30],["UK3CB_BAF_1Rnd_HEDP_Grenade_Shell",6,1],["UK3CB_BAF_1Rnd_Smoke_Grenade_shell",2,1],["UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell",2,1],["UK3CB_BAF_UGL_FlareCIR_F",1,1],["UK3CB_BAF_UGL_FlareWhite_F",1,1]]],["Invisi_Small_bp",[["tsp_sling",1],["ACE_EHP",1],["ACE_EarPlugs",1],["Kestrel_BLK_SF_U_C",1],["ACE_plasmaIV_500",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["UK3CB_BAF_Bayonet_L3A1",1]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_STRIP_SCRIM","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit; 

[   
_this,   
"Team Medic",   
[["UK3CB_BAF_L85A3_AFG_T","UK3CB_BAF_SFFH","MCC_VarioRay_IRL","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd",30],[],"UK3CB_underbarrel_acc_afg_t"],[],[],["TRF_PCS_FS_NG_U",[["ACE_elasticBandage",24],["ACE_packingBandage",24],["ACE_tourniquet",8],["cigs_matches",1,10],["cigs_lucky_strike_cigpack",1,20]]],["TRF_STV_Medic",[["ACE_Flashlight_XL50",1],["Kestrel_BLK_SF_U_C",1],["ACE_MapTools",1],["ACE_EHP",1],["ACE_EarPlugs",1],["UK3CB_BAF_Bayonet_L3A1",1],["ACE_CableTie",2],["tsp_sling",1],["UK3CB_BAF_556_30Rnd",6,30],["rhs_mag_m67",1,1],["UK3CB_BAF_SmokeShell",2,1],["UK3CB_BAF_SmokeShellRed",1,1],["Chemlight_green",1,1],["Chemlight_red",1,1]]],["TRF_VIRTUS_ASSAULT_PACK",[["kat_IV_16",12],["kat_aatKit",3],["ACE_adenosine",15],["kat_amiodarone",5],["kat_AED",1],["kat_BVM",1],["kat_chestSeal",15],["kat_EACA",10],["ACE_epinephrine",15],["kat_IO_FAST",5],["kat_larynx",20],["ACE_morphine",10],["kat_naloxone",10],["ACE_plasmaIV",5],["ACE_plasmaIV_500",6],["kat_Pulseoximeter",4],["ACE_splint",6],["kat_stethoscope",1],["ACE_surgicalKit",1],["kat_TXA",10],["kat_Carbonate",1,10],["ACE_painkillers",2,10],["kat_oxygenTank_150",1,100],["acex_intelitems_notepad",1,1]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_SCRIM_OAK","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit; 

[   
_this,   
"Machine Gunner",   
[["P_UKSF_L7A2","","","RKSL_optic_LDS",["UK3CB_BAF_762_100Rnd",100],[],""],[],["P_UKSF_Glock17_G4","","","",["P_UKSF_Mag_17rnd_9MM_FMJ_G17",17],[],""],["TRF_PCS_FS_NG_U",[["kat_IV_16",1],["ACE_adenosine",2],["ACE_elasticBandage",8],["ACE_packingBandage",8],["kat_chestSeal",2],["ACE_epinephrine",4],["ACE_morphine",2],["kat_naloxone",1],["ACE_splint",1],["kat_Painkiller",2,4],["cigs_lucky_strike_cigpack",1,20],["cigs_matches",1,10]]],["TRF_STV_Gunner",[["ACE_tourniquet",4],["ACE_CableTie",2],["rhs_mag_m67",1,1],["UK3CB_BAF_SmokeShell",2,1],["UK3CB_BAF_SmokeShellRed",1,1],["acex_intelitems_notepad",1,1],["Chemlight_green",1,1],["Chemlight_red",1,1],["P_UKSF_Mag_17rnd_9MM_FMJ_G17",2,17],["UK3CB_BAF_762_100Rnd",3,100]]],["Invisi_Small_bp",[["ACE_EarPlugs",1],["ACE_EHP",1],["tsp_sling",1],["Kestrel_BLK_SF_U_C",1],["ACE_plasmaIV_500",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["UK3CB_BAF_Kite",1]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_STRIP_SCRIM","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit; 

[   
_this,   
"Section 2IC",   
[["UK3CB_BAF_L85A3_AFG_T","UK3CB_BAF_SFFH","MCC_VarioRay_IRL","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd",30],[],"UK3CB_underbarrel_acc_afg_t"],[],[],["TRF_PCS_FS_NG_U",[["kat_IV_16",1],["ACE_adenosine",2],["ACE_elasticBandage",8],["ACE_packingBandage",8],["kat_chestSeal",2],["ACE_epinephrine",4],["ACE_morphine",2],["kat_naloxone",1],["ACE_splint",1],["kat_Painkiller",2,4],["cigs_lucky_strike_cigpack",1,20],["cigs_matches",1,10]]],["TRF_STV_IC",[["ACE_tourniquet",4],["ACE_CableTie",2],["ItemAndroidMisc",1],["UK3CB_BAF_556_30Rnd",6,30],["rhs_mag_m67",2,1],["UK3CB_BAF_SmokeShell",2,1],["UK3CB_BAF_SmokeShellRed",1,1],["acex_intelitems_notepad",1,1],["Chemlight_green",1,1],["Chemlight_red",1,1]]],["TRF_VIRTUS_ASSAULT_PACK_LR",[["ACE_IR_Strobe_Item",1],["ACE_EntrenchingTool",1],["ACE_EarPlugs",1],["ACE_EHP",1],["tsp_sling",1],["Kestrel_BLK_SF_U_C",1],["ACE_plasmaIV_500",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["UK3CB_BAF_Bayonet_L3A1",1],["UK3CB_BAF_762_100Rnd",2,100]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",["rhsusf_bino_m24_ARD","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_SCRIM_OAK","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_STV_IC","TRF_STV_IC_2","TRF_STV_IC_3","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit; 

[   
_this,   
"Section Commander",   
[["UK3CB_BAF_L85A3","UK3CB_BAF_SFFH","MCC_VarioRay_IRL","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd",30],[],"UK3CB_underbarrel_acc_afg_t"],[],["P_UKSF_Glock17_G4","","","",["P_UKSF_Mag_17rnd_9MM_FMJ_G17",17],[],""],["TRF_PCS_FS_NG_U",[["kat_IV_16",1],["ACE_adenosine",2],["ACE_elasticBandage",8],["ACE_packingBandage",8],["kat_chestSeal",2],["ACE_epinephrine",4],["ACE_morphine",2],["kat_naloxone",1],["ACE_splint",1],["kat_Painkiller",2,4],["cigs_lucky_strike_cigpack",2,20],["cigs_matches",1,10]]],["TRF_STV_IC",[["ACE_tourniquet",4],["ACE_CableTie",2],["ItemAndroidMisc",1],["UK3CB_BAF_556_30Rnd",6,30],["rhs_mag_m67",2,1],["UK3CB_BAF_SmokeShell",2,1],["UK3CB_BAF_SmokeShellRed",2,1],["acex_intelitems_notepad",1,1],["Chemlight_green",1,1],["Chemlight_red",1,1],["P_UKSF_Mag_17rnd_9MM_FMJ_G17",2,17]]],["TRF_VIRTUS_ASSAULT_PACK_LR",[["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],["ACE_EHP",1],["tsp_sling",1],["ACE_plasmaIV_500",1],["Kestrel_BLK_SF_U_C",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["UK3CB_BAF_Bayonet_L3A1",1]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_SCRIM_OAK","TRF_BATLSKIN_REVISION_STRIP_SCRIM","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_STV_IC","TRF_STV_IC_2","TRF_STV_IC_3","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit; 

[   
_this,   
"Sharpshooter",   
[["UK3CB_BAF_L129A1_FGrip_Bipod","","MCC_VarioRay_IRL","UK3CB_BAF_TA648_308",["UK3CB_BAF_762_L42A1_20Rnd",20],[],"UK3CB_underbarrel_acc_fgrip_bipod"],[],[],["TRF_PCS_FS_NG_U",[["kat_IV_16",1],["ACE_adenosine",2],["ACE_elasticBandage",8],["ACE_packingBandage",8],["kat_chestSeal",2],["ACE_epinephrine",4],["ACE_morphine",2],["kat_naloxone",1],["ACE_splint",1],["kat_Painkiller",2,4],["cigs_matches",1,10],["cigs_lucky_strike_cigpack",1,20]]],["TRF_STV_Sharpshooter",[["ACE_tourniquet",4],["ACE_CableTie",2],["ACE_IR_Strobe_Item",1],["rhs_mag_m67",1,1],["UK3CB_BAF_SmokeShell",2,1],["UK3CB_BAF_SmokeShellRed",1,1],["acex_intelitems_notepad",1,1],["Chemlight_green",1,1],["Chemlight_red",1,1],["UK3CB_BAF_762_L42A1_20Rnd",5,20]]],["Invisi_Small_bp",[["ACE_EarPlugs",1],["ACE_EHP",1],["tsp_sling",1],["Kestrel_BLK_SF_U_C",1],["ACE_plasmaIV_500",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",["rhsusf_bino_m24_ARD","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_SCRIM_OAK","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit; 

[   
_this,   
"Platoon Signaller",   
[["UK3CB_BAF_L85A3_AFG_T","UK3CB_BAF_SFFH","MCC_VarioRay_IRL","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd",30],[],"UK3CB_underbarrel_acc_afg_t"],[],["P_UKSF_Glock17_G4","","","",["P_UKSF_Mag_17rnd_9MM_FMJ_G17",17],[],""],["TRF_PCS_FS_NG_U",[["kat_IV_16",1],["ACE_adenosine",2],["ACE_elasticBandage",8],["ACE_packingBandage",8],["kat_chestSeal",2],["ACE_epinephrine",4],["ACE_morphine",2],["kat_naloxone",1],["ACE_splint",1],["kat_Painkiller",2,4]]],["TRF_STV_SIGNALLER",[["ACE_tourniquet",4],["ACE_CableTie",2],["ItemAndroidMisc",1],["UK3CB_BAF_556_30Rnd",5,30],["rhs_mag_m67",1,1],["UK3CB_BAF_SmokeShell",2,1],["UK3CB_BAF_SmokeShellRed",2,1],["acex_intelitems_notepad",1,1],["Chemlight_green",1,1],["Chemlight_red",1,1],["P_UKSF_Mag_17rnd_9MM_FMJ_G17",2,17],["cigs_lucky_strike_cigpack",1,20],["cigs_matches",1,10]]],["TRF_VIRTUS_ASSAULT_PACK_FAC",[["ACE_IR_Strobe_Item",1],["ItemcTabMisc",1],["ace_flags_orange",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["Kestrel_BLK_SF_U_C",1],["ACE_plasmaIV_500",1],["ACE_EarPlugs",1],["ACE_EHP",1],["tsp_sling",1],["UK3CB_BAF_Bayonet_L3A1",1],["Laserbatteries",1,1]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_SCRIM_OAK","TRF_BATLSKIN_REVISION_STRIP_SCRIM","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_STV_IC","TRF_STV_IC_2","TRF_STV_IC_3","TRF_PCU_NG_U","TRF_PCU_G_U","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit; 

[   
_this,   
"Platoon Medic",   
[["UK3CB_BAF_L85A3_AFG_T","UK3CB_BAF_SFFH","MCC_VarioRay_IRL","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd",30],[],"UK3CB_underbarrel_acc_afg_t"],[],["P_UKSF_Glock17_G4","","","",["P_UKSF_Mag_17rnd_9MM_FMJ_G17",17],[],""],["TRF_PCS_FS_NG_U",[["ACE_elasticBandage",24],["ACE_packingBandage",24],["ACE_tourniquet",8],["cigs_matches",1,10],["cigs_lucky_strike_cigpack",1,20]]],["TRF_STV_Medic",[["ACE_Flashlight_XL50",1],["Kestrel_BLK_SF_U_C",1],["ACE_IR_Strobe_Item",1],["ACE_EHP",1],["ACE_EarPlugs",1],["ACE_MapTools",1],["UK3CB_BAF_Bayonet_L3A1",1],["ACE_CableTie",2],["tsp_sling",1],["UK3CB_BAF_556_30Rnd",5,30],["UK3CB_BAF_SmokeShell",3,1],["Chemlight_green",1,1],["Chemlight_red",1,1],["P_UKSF_Mag_17rnd_9MM_FMJ_G17",2,17],["UK3CB_BAF_SmokeShellRed",1,1],["acex_intelitems_notepad",1,1]]],["TRF_CAMELBACK",[["kat_IV_16",12],["kat_aatKit",13],["kat_accuvac",1],["ACE_adenosine",15],["kat_X_AED",1],["kat_amiodarone",5],["kat_BVM",1],["kat_chestSeal",15],["kat_EACA",15],["ACE_epinephrine",15],["kat_IO_FAST",5],["kat_fentanyl",4],["kat_ketamine",4],["kat_larynx",10],["ACE_morphine",10],["kat_naloxone",10],["ACE_plasmaIV",5],["ACE_plasmaIV_500",6],["kat_Pulseoximeter",5],["kat_stethoscope",1],["ACE_surgicalKit",1],["kat_TXA",15],["ACE_splint",8],["ACE_packingBandage",6],["ACE_elasticBandage",6],["kat_Carbonate",1,10],["ACE_painkillers",2,10],["cigs_lucky_strike_cigpack",1,20]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_SCRIM_OAK","TRF_BATLSKIN_REVISION_STRIP_SCRIM","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit; 

[   
_this,   
"Platoon Commander",   
[["UK3CB_BAF_L85A3","UK3CB_BAF_SFFH","MCC_VarioRay_IRL","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd",30],[],"UK3CB_underbarrel_acc_afg_t"],[],["P_UKSF_Glock17_G4","","","",["P_UKSF_Mag_17rnd_9MM_FMJ_G17",17],[],""],["TRF_PCS_FS_NG_U",[["kat_IV_16",1],["ACE_adenosine",2],["ACE_elasticBandage",8],["ACE_packingBandage",8],["kat_chestSeal",2],["ACE_epinephrine",4],["ACE_morphine",2],["kat_naloxone",1],["kat_Painkiller",2,4],["cigs_matches",1,10],["cigs_lucky_strike_cigpack",1,20]]],["TRF_STV_IC",[["ACE_tourniquet",4],["ACE_CableTie",2],["ItemAndroidMisc",1],["UK3CB_BAF_556_30Rnd",5,30],["rhs_mag_m67",1,1],["acex_intelitems_notepad",1,1],["Chemlight_green",1,1],["Chemlight_red",1,1],["UK3CB_BAF_SmokeShell",2,1],["UK3CB_BAF_SmokeShellRed",2,1],["P_UKSF_Mag_17rnd_9MM_FMJ_G17",2,17]]],["TRF_VIRTUS_ASSAULT_PACK_LR",[["ItemcTabMisc",1],["iedd_item_notebook",1],["Kestrel_BLK_SF_U_C",1],["ACE_splint",1],["ACE_plasmaIV_500",1],["ACE_MapTools",1],["ACE_IR_Strobe_Item",1],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_EHP",1],["tsp_sling",1],["ACE_Clacker",1],["UK3CB_BAF_Bayonet_L3A1",1],["Laserbatteries",1,1]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_SCRIM_OAK","TRF_BATLSKIN_REVISION_STRIP_SCRIM","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_STV_IC","TRF_STV_IC_2","TRF_STV_IC_3","TRF_PCU_NG_U","TRF_PCU_G_U","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit; 

[   
_this,   
"Platoon Sergeant",   
[["UK3CB_BAF_L85A3","UK3CB_BAF_SFFH","MCC_VarioRay_IRL","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd",30],[],"UK3CB_underbarrel_acc_afg_t"],[],["P_UKSF_Glock17_G4","","","",["P_UKSF_Mag_17rnd_9MM_FMJ_G17",17],[],""],["TRF_PCS_FS_NG_U",[["kat_IV_16",1],["ACE_adenosine",2],["ACE_elasticBandage",8],["ACE_packingBandage",8],["kat_chestSeal",2],["ACE_epinephrine",4],["ACE_morphine",2],["kat_naloxone",1],["ACE_splint",1],["kat_Painkiller",2,4],["cigs_matches",1,10],["cigs_lucky_strike_cigpack",1,20]]],["TRF_STV_IC",[["ACE_tourniquet",4],["ACE_CableTie",2],["ItemAndroidMisc",1],["UK3CB_BAF_556_30Rnd",5,30],["rhs_mag_m67",1,1],["acex_intelitems_notepad",1,1],["Chemlight_green",1,1],["Chemlight_red",1,1],["UK3CB_BAF_SmokeShell",2,1],["UK3CB_BAF_SmokeShellRed",2,1],["P_UKSF_Mag_17rnd_9MM_FMJ_G17",2,17]]],["TRF_VIRTUS_ASSAULT_PACK_LR",[["ItemcTabMisc",1],["Kestrel_BLK_SF_U_C",1],["ACE_plasmaIV_500",1],["ACE_MapTools",1],["ACE_IR_Strobe_Item",1],["ACE_Flashlight_XL50",1],["ACE_EntrenchingTool",1],["iedd_item_notebook",1],["ACE_Clacker",1],["UK3CB_BAF_Bayonet_L3A1",1]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_SCRIM_OAK","TRF_BATLSKIN_REVISION_STRIP_SCRIM","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_STV_IC","TRF_STV_IC_2","TRF_STV_IC_3","TRF_PCU_NG_U","TRF_PCU_G_U","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit; 

[   
_this,   
"Platoon UAV Operator",   
[["UK3CB_BAF_L85A3","UK3CB_BAF_SFFH","MCC_VarioRay_IRL","RKSL_optic_LDS",["UK3CB_BAF_556_30Rnd",30],[],"UK3CB_underbarrel_acc_afg_t"],[],["P_UKSF_Glock17_G4","","","",["P_UKSF_Mag_17rnd_9MM_FMJ_G17",17],[],""],["TRF_PCS_FS_NG_U",[["kat_IV_16",1],["ACE_adenosine",2],["ACE_elasticBandage",8],["ACE_packingBandage",8],["kat_chestSeal",2],["ACE_epinephrine",4],["ACE_morphine",2],["kat_naloxone",1],["ACE_splint",1],["kat_Painkiller",2,4],["cigs_matches",1,10],["cigs_lucky_strike_cigpack",1,20]]],["TRF_STV_IC",[["ACE_tourniquet",4],["ACE_CableTie",2],["ItemAndroidMisc",1],["UK3CB_BAF_556_30Rnd",5,30],["rhs_mag_m67",1,1],["acex_intelitems_notepad",1,1],["Chemlight_green",1,1],["Chemlight_red",1,1],["UK3CB_BAF_SmokeShell",2,1],["UK3CB_BAF_SmokeShellRed",1,1],["P_UKSF_Mag_17rnd_9MM_FMJ_G17",2,17]]],["TRF_VIRTUS_ASSAULT_PACK_FAC",[["Kestrel_BLK_SF_U_C",1],["ACE_plasmaIV_500",1],["ACE_MapTools",1],["ACE_IR_Strobe_Item",1],["ACE_Flashlight_XL50",1],["tsp_sling",1],["ACE_EarPlugs",1],["ACE_EHP",1],["UK3CB_BAF_Bayonet_L3A1",1],["GX_UAVBattery",3],["GX_DEPLOYABLE_MAGAZINE_BLACKHORNET_UAV",2,100],["GX_DEPLOYABLE_MAGAZINE_RQ11B_UAV",1,100],["BOT_magazine_FPV_AP_LD",1,1],["BOT_magazine_FPV_AP_HD",2,1],["BOT_magazine_FPV_AT_LD",1,1]]],"TRF_BATLSKIN_REVISION_IR","UK3CB_BAF_G_Tactical_Clear",["rhsusf_bino_m24_ARD","","","",[],[],""],["ItemMap","B_UavTerminal","TFAR_anprc152","ItemCompass","KAT_STS",""]],    
["TRF_BATLSKIN_REVISION_IR","TRF_BATLSKIN_REVISION_NETTING_IR","TRF_BATLSKIN_REVISION_SCRIM_OAK","TRF_BATLSKIN_REVISION_STRIP_SCRIM","TRF_PCS_FS_NG_U","TRF_PCS_FS_G_U","TRF_PCS_HS_NG_U","TRF_PCS_HS_G_U","TRF_PCS_RS_NG_U","TRF_PCS_RS_G_U","TRF_STV_IC","TRF_STV_IC_2","TRF_STV_IC_3","TRF_PCU_NG_U","TRF_PCU_G_U","TRF_SNOW_COVERALLS","UK3CB_BAF_G_Balaclava_Win","UK3CB_BAF_G_Tactical_Clear"],   
"true",   
{}   
] spawn Wbk_AddKit;
