private _timeout = time + 60;
waitUntil { !isNil "Wbk_AddKit" || time > _timeout };
if (isNil "Wbk_AddKit") exitWith {};
clearWeaponCargoGlobal _this;
clearMagazineCargoGlobal _this;
clearItemCargoGlobal _this;
clearBackpackCargoGlobal _this;

[
_this,
"Sniper",
[["MSS_AXSR_338NM_SAGE","MSS_MFMD_SDX_BLK","","MSS_SB_PMII_525_BLK_GM_NO_LRF_NO",["MSS_10rnd_338NM_300ATIP_AXSR",10],[],"MSS_Atlas_BT72"],[],["MPP_G19_BLK_9","MPP_G19_TC","MPP_X300T","MPP_ACRO_BLK",["MPP_17rnd_9MM_147JHP_G17",17],[],""],["U_B_FullGhillie_sard",[["kat_IV_16",6],["ACE_adenosine",2],["kat_amiodarone",1],["ACE_elasticBandage",12],["ACE_packingBandage",12],["kat_chestSeal",8],["kat_EACA",2],["ACE_epinephrine",6],["kat_IO_FAST",2],["kat_larynx",2],["ACE_morphine",4],["kat_naloxone",2],["kat_Pulseoximeter",1],["ACE_tourniquet",8],["kat_TXA",2],["kat_Carbonate",1,10],["kat_Painkiller",2,4],["ACE_painkillers",2,10]]],["PFM_NA_L",[["ACE_IR_Strobe_Item",1],["ACE_Kestrel4500",1],["ACE_RangeCard",1],["ItemAndroidMisc",1],["ACE_ATragMX",1],["MPP_bti_blk",1],["ACE_CableTie",5],["MPP_17rnd_9MM_147JHP_G17",2,17],["UK3CB_BAF_SmokeShell",1,1],["UK3CB_BAF_SmokeShellGreen",1,1],["ACE_Chemlight_HiGreen",1,1],["ACE_Chemlight_HiRed",2,1],["ACE_Chemlight_IR",2,1],["rhs_mag_mk84",1,1],["rhs_mag_m67",1,1],["MSS_10rnd_338NM_300ATIP_AXSR",3,10],["MSS_10rnd_338NM_M1162_AXSR",2,10]]],["asip_b_01_mc",[["42cdo_vs17_item",1],["ACE_EarPlugs",1],["ACE_EHP",1],["ACE_MapTools",1],["ACE_PlottingBoard",1],["ACE_Tripod",1],["ACE_splint",3],["ACE_surgicalKit",1],["ACE_plasmaIV_500",4],["acex_intelitems_notepad",1,1]]],"Bump_MC_SWIR_NCW_AMPD_NVL","Zulu_Boogie_M_RG",["ACE_Vector","","","",[],[],""],["ItemMap","","TFAR_anprc152","ItemCompass","KAT_Cavmin","Kestrel_GLD_SF_UW_C"]],     
["U_B_FullGhillie_ard","U_B_FullGhillie_lsh","U_B_FullGhillie_sard","U_B_T_FullGhillie_tna_F","MSS_SB_PMII_525_BLK_GM_NO_LRF_NO","MSS_SB_PMII_525_BLK_GM_NO_LRF_NV","MSS_MFMD_BLK","MSS_MFMD_SD_BLK","MSS_MFMD_SDX_BLK","U_AlpGhillie","DPM_FullGhillie","U_SnowGhillie","U_TaigaGhillie","U_GarbageGhillie3","MSS_AML338_BLK","MSS_AML338_BLK_C","UK3CB_BAF_G_Balaclava_Win","Zulu_Boogie_M_RG","Z_G3_RG_KP_PCU_RG_G_H_NB","zxx_molot_lapa_mc_v1_face","zxx_molot_lapa_mct_v1_face","zxx_molot_lapa_mcal_v1_face","zxx_molot_lapa_sapsan_v1_face"],    
"true",    
{}    
] spawn Wbk_AddKit;  
 
[    
_this,    
"Spotter",    
[["MSS_SR25_65CM_14_B5_FDE","MSS_KAC_PRSQDC_FDE","","MSS_Mark5_18_BLK_GM_NO_LRF_NO",["MSS_20rnd_AR10_MP_65CM_M1200_FDE",20],[],"MSS_Atlas_BT65"],[],["MPP_G19_BLK_9","MPP_G19_TC","MPP_X300T","MPP_ACRO_BLK",["MPP_17rnd_9MM_147JHP_G17",17],[],""],["U_B_FullGhillie_sard",[["kat_IV_16",6],["ACE_adenosine",2],["kat_amiodarone",1],["ACE_elasticBandage",12],["ACE_packingBandage",12],["kat_chestSeal",8],["kat_EACA",2],["ACE_epinephrine",6],["kat_IO_FAST",2],["kat_larynx",2],["ACE_morphine",4],["kat_naloxone",2],["kat_Pulseoximeter",1],["ACE_tourniquet",8],["kat_TXA",2],["kat_Carbonate",1,10],["kat_Painkiller",2,4],["ACE_painkillers",2,10]]],["PFM_NA_L",[["ACE_IR_Strobe_Item",1],["ItemAndroidMisc",1],["MPP_bti_blk",1],["ACE_CableTie",5],["MPP_17rnd_9MM_147JHP_G17",2,17],["UK3CB_BAF_SmokeShell",1,1],["UK3CB_BAF_SmokeShellGreen",1,1],["ACE_Chemlight_HiGreen",1,1],["ACE_Chemlight_HiRed",2,1],["ACE_Chemlight_IR",2,1],["rhs_mag_mk84",1,1],["rhs_mag_m67",1,1],["MSS_20rnd_AR10_MP_65CM_M1200_FDE",3,20],["MSS_20rnd_AR10_MP_65CM_147ELDM_FDE",3,20]]],["asip_b_01_mc",[["42cdo_vs17_item",1],["ACE_EarPlugs",1],["ACE_EHP",1],["ACE_MapTools",1],["ACE_PlottingBoard",1],["ACE_SpottingScope",1],["ACE_plasmaIV_500",4],["ACE_splint",3],["ACE_surgicalKit",1],["ACE_RangeCard",1],["ACE_Kestrel4500",1],["ACE_ATragMX",1],["acex_intelitems_notepad",1,1]]],"Bump_MC_SWIR_NCW_AMPD_NVL","Zulu_Boogie_M_RG",["ACE_Vector","","","",[],[],""],["ItemMap","","TFAR_anprc152","ItemCompass","KAT_Cavmin","Kestrel_GLD_SF_UW_C"]],     
["U_B_FullGhillie_ard","U_B_FullGhillie_lsh","U_B_FullGhillie_sard","U_B_T_FullGhillie_tna_F","MSS_Mark5_18_BLK_GM_NO_LRF_NO","MSS_Mark5_18_BLK_GM_NO_LRF_NV","MSS_Mark5_18_BLK_GM_NO_LRF_TI","U_AlpGhillie","DPM_FullGhillie","U_SnowGhillie","U_TaigaGhillie","U_GarbageGhillie3","Zulu_Boogie_M_RG","Z_G3_RG_KP_PCU_RG_G_H_NB","zxx_molot_lapa_mc_v1_face","zxx_molot_lapa_mct_v1_face","zxx_molot_lapa_mcal_v1_face","zxx_molot_lapa_sapsan_v1_face"],    
"true",    
{}    
] spawn Wbk_AddKit;  
 
[    
_this,    
"Drone Carrier",    
[["ZXX_MCC_KS3_FDE_SLK_NAS3","MCC_MCQ1_Shroud_556_TAN","MCC_AR_NGAL_M600V_Tail_BLK_IRL","MCC_Vortex_Elanor_Acro_TAN",["MCC_PMAG_556_556_30_MK262_NAS3",30],[],"MCC_BCM_VFG_FDE"],[],["MPP_G19_BLK_9","MPP_G19_TC","MPP_X300T","MPP_ACRO_BLK",["MPP_17rnd_9MM_147JHP_G17",17],[],""],["Z_G3_RG_KP_PCU_RG_G_H",[["kat_IV_16",6],["ACE_adenosine",2],["kat_amiodarone",1],["ACE_elasticBandage",12],["ACE_packingBandage",12],["kat_chestSeal",8],["kat_EACA",2],["ACE_epinephrine",6],["kat_IO_FAST",2],["kat_larynx",2],["ACE_morphine",4],["kat_naloxone",2],["kat_Pulseoximeter",1],["ACE_splint",3],["ACE_tourniquet",8],["kat_TXA",2],["ACE_plasmaIV_500",4],["ACE_surgicalKit",1],["kat_Carbonate",1,10],["kat_Painkiller",2,4],["ACE_painkillers",2,10]]],["TRF_SPIRITUS_A",[["tsp_sling",1],["ACE_CableTie",5],["ItemAndroidMisc",1],["NightCap_Gld_UW",1],["MCC_PMAG_556_556_30_MK262_NAS3",5,30],["rhs_mag_mk84",2,1],["rhs_mag_m67",1,1],["UK3CB_BAF_SmokeShell",2,1],["ACE_Chemlight_IR",2,1],["ACE_Chemlight_HiRed",4,1],["ACE_Chemlight_HiGreen",2,1],["MPP_17rnd_9MM_147JHP_G17",2,17],["UK3CB_BAF_SmokeShellGreen",1,1]]],["TRF_ZIPON_LR",[["ACE_EarPlugs",1],["ACE_EHP",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["42cdo_vs17_item",1],["GX_UAVBattery",2],["acex_intelitems_notepad",1,1],["GX_DEPLOYABLE_MAGAZINE_BLACKHORNET_UAV",2,100],["GX_DEPLOYABLE_MAGAZINE_RQ11B_UAV",1,100]]],"UKAF_BOONIE","Zulu_Boogie_M_RG",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","TFAR_anprc152","ItemCompass","KAT_Cavmin",""]],     
["ZXX_MCC_KS1_FDE_SLK_NAS3","ZXX_MCC_KS3_FDE_SLK_NAS3","MCC_MCQ1_556_TAN","MCC_MCQ1_Shroud_556_TAN","MCC_MLOK_AFG_FDE","MCC_BCM_VFG_FDE","UKSFOW","Z_G3_RG_KP_PCU_RG_G_H","MCC_EXPS3_UnityX_FDE_Down","MCC_MicroT2_Down","MCC_Vortex_Elanor_Acro_TAN","Zulu_Boogie_M2_CB","UK3CB_BAF_G_Balaclava_Win","Zulu_Boogie_M_RG","Zulu_Gatorz_M_RG_BLK_PPL","Zulu_MFrame_A_M_RG_BLK_PPL","zxx_molot_lapa_mc_v1_face","zxx_molot_lapa_mct_v1_face","zxx_molot_lapa_mcal_v1_face","zxx_molot_lapa_sapsan_v1_face"],    
"true",    
{}    
] spawn Wbk_AddKit;  
 
[    
_this,    
"Surveillance Specialist",    
[["ZXX_MCC_KS3_FDE_SLK_NAS3","MCC_MCQ1_Shroud_556_TAN","MCC_AR_NGAL_M600V_Tail_BLK_IRL","MCC_Vortex_Elanor_Acro_TAN",["MCC_PMAG_556_556_30_MK262_NAS3",30],[],"MCC_BCM_VFG_FDE"],[],["MPP_G19_BLK_9","MPP_G19_TC","MPP_X300T","MPP_ACRO_BLK",["MPP_17rnd_9MM_147JHP_G17",17],[],""],["Z_G3_RG_KP_PCU_RG_G_H",[["kat_IV_16",6],["ACE_adenosine",2],["kat_amiodarone",1],["ACE_elasticBandage",12],["ACE_packingBandage",12],["kat_chestSeal",8],["kat_EACA",2],["ACE_epinephrine",6],["kat_IO_FAST",2],["kat_larynx",2],["ACE_morphine",4],["kat_naloxone",2],["kat_Pulseoximeter",1],["ACE_splint",3],["ACE_tourniquet",8],["kat_TXA",2],["ACE_plasmaIV_500",4],["ACE_surgicalKit",1],["kat_Carbonate",1,10],["kat_Painkiller",2,4],["ACE_painkillers",2,10]]],["TRF_SPIRITUS_A",[["tsp_sling",1],["ACE_CableTie",5],["ItemAndroidMisc",1],["MPP_bti_blk",1],["tsp_lockpick",1],["ACE_Clacker",1],["rhs_mag_mk84",2,1],["rhs_mag_m67",1,1],["UK3CB_BAF_SmokeShell",2,1],["ACE_Chemlight_IR",2,1],["ACE_Chemlight_HiRed",4,1],["ACE_Chemlight_HiGreen",2,1],["MPP_17rnd_9MM_147JHP_G17",2,17],["UK3CB_BAF_SmokeShellGreen",1,1],["MCC_PMAG_556_556_30_MK262_NAS3",6,30],[["Hate_Smartphone_HUD","","","",[],[],""],1]]],["TRF_ZIPON",[["ACE_EarPlugs",1],["ACE_EHP",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["42cdo_vs17_item",1],["GX_UAVBattery",1],["NightCap_Gld_UW",1],["acex_intelitems_notepad",1,1],["Laserbatteries",2,1],["GX_DEPLOYABLE_MAGAZINE_BLACKHORNET_UAV",1,100],["rhsusf_m112_mag",1,1],[["Nikon_DSLR_HUD","","","",[],[],""],1]]],"UKAF_BOONIE","Zulu_Gatorz_M_RG_BLK_PPL",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","TFAR_anprc152","ItemCompass","KAT_Cavmin",""]],     
["ZXX_MCC_KS1_FDE_SLK_NAS3","ZXX_MCC_KS3_FDE_SLK_NAS3","MCC_MCQ1_556_TAN","MCC_MCQ1_Shroud_556_TAN","MCC_MLOK_AFG_FDE","MCC_BCM_VFG_FDE","Z_G3_RG_KP_PCU_RG_G_H","UKSFOW","MCC_EXPS3_UnityX_FDE_Down","MCC_MicroT2_Down","MCC_Vortex_Elanor_Acro_TAN","UK3CB_BAF_G_Balaclava_Win","Zulu_Boogie_M_RG","Zulu_Gatorz_M_RG_BLK_PPL","Zulu_MFrame_A_M_RG_BLK_PPL"],    
"true",    
{}    
] spawn Wbk_AddKit;  
 
 
[    
_this,    
"SIGINT Specialist",    
[["ZXX_MCC_KS3_FDE_SLK_NAS3","MCC_MCQ1_Shroud_556_TAN","MCC_AR_NGAL_M600V_Tail_BLK_IRL","MCC_Vortex_Elanor_Acro_TAN",["MCC_PMAG_556_556_30_MK262_NAS3",30],[],"MCC_BCM_VFG_FDE"],[],["MPP_G19_BLK_9","MPP_G19_TC","MPP_X300T","MPP_ACRO_BLK",["MPP_17rnd_9MM_147JHP_G17",17],[],""],["Z_G3_RG_KP_PCU_RG_G_H",[["kat_IV_16",6],["ACE_adenosine",2],["kat_amiodarone",1],["ACE_elasticBandage",12],["ACE_packingBandage",12],["kat_chestSeal",8],["kat_EACA",2],["ACE_epinephrine",6],["kat_IO_FAST",2],["kat_larynx",2],["ACE_morphine",4],["kat_naloxone",2],["kat_Pulseoximeter",1],["ACE_splint",3],["ACE_tourniquet",8],["kat_TXA",2],["ACE_plasmaIV_500",4],["ACE_surgicalKit",1],["kat_Carbonate",1,10],["kat_Painkiller",2,4],["ACE_painkillers",2,10]]],["TRF_SPIRITUS_A",[["tsp_sling",1],["ACE_CableTie",5],["ItemAndroidMisc",1],["MPP_bti_blk",1],["ACE_Clacker",1],["tsp_lockpick",1],["rhs_mag_mk84",2,1],["rhs_mag_m67",1,1],["UK3CB_BAF_SmokeShell",2,1],["ACE_Chemlight_IR",2,1],["ACE_Chemlight_HiRed",4,1],["ACE_Chemlight_HiGreen",2,1],["MPP_17rnd_9MM_147JHP_G17",2,17],["UK3CB_BAF_SmokeShellGreen",1,1],["MCC_PMAG_556_556_30_MK262_NAS3",5,30]]],["ZXX_Jammer",[["ACE_EarPlugs",1],["ACE_EHP",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["42cdo_vs17_item",1],["GX_UAVBattery",1],["NightCap_Gld_UW",1],["acex_intelitems_notepad",1,1],["rhsusf_m112_mag",1,1],[["Nikon_DSLR_HUD","","","",[],[],""],1]]],"UKAF_BOONIE","Zulu_Gatorz_M_RG_BLK_PPL",["ACE_Yardage450","","","",[],[],""],["ItemMap","B_UavTerminal","TFAR_anprc152","ItemCompass","KAT_Cavmin",""]],     
["ZXX_MCC_KS1_FDE_SLK_NAS3","ZXX_MCC_KS3_FDE_SLK_NAS3","MCC_MCQ1_556_TAN","MCC_MCQ1_Shroud_556_TAN","MCC_MLOK_AFG_FDE","MCC_BCM_VFG_FDE","Z_G3_RG_KP_PCU_RG_G_H","UKSFOW","MCC_EXPS3_UnityX_FDE_Down","MCC_MicroT2_Down","MCC_Vortex_Elanor_Acro_TAN","UK3CB_BAF_G_Balaclava_Win","Zulu_Boogie_M_RG","Zulu_Gatorz_M_RG_BLK_PPL","Zulu_MFrame_A_M_RG_BLK_PPL"],    
"true",    
{}    
] spawn Wbk_AddKit;  
 
 
[    
_this,    
"Technical Specialist",    
[["ZXX_MCC_KS3_FDE_SLK_NAS3","MCC_MCQ1_Shroud_556_TAN","MCC_AR_NGAL_M600V_Tail_BLK_IRL","MCC_Vortex_Elanor_Acro_TAN",["MCC_PMAG_556_556_30_MK262_NAS3",30],[],"MCC_BCM_VFG_FDE"],[],["MPP_G19_BLK_9","MPP_G19_TC","MPP_X300T","MPP_ACRO_BLK",["MPP_17rnd_9MM_147JHP_G17",17],[],""],["Z_G3_RG_KP_PCU_RG_G_H",[["kat_IV_16",6],["ACE_adenosine",2],["kat_amiodarone",1],["ACE_elasticBandage",12],["ACE_packingBandage",12],["kat_chestSeal",8],["kat_EACA",2],["ACE_epinephrine",6],["kat_IO_FAST",2],["kat_larynx",2],["ACE_morphine",4],["kat_naloxone",2],["kat_Pulseoximeter",1],["ACE_splint",3],["ACE_tourniquet",8],["kat_TXA",2],["ACE_plasmaIV_500",4],["ACE_surgicalKit",1],["kat_Carbonate",1,10],["kat_Painkiller",2,4],["ACE_painkillers",2,10]]],["TRF_SPIRITUS_A",[["tsp_sling",1],["ACE_CableTie",5],["ItemAndroidMisc",1],["MPP_bti_blk",1],["ACE_Clacker",1],["tsp_lockpick",1],["rhs_mag_mk84",2,1],["rhs_mag_m67",1,1],["UK3CB_BAF_SmokeShell",2,1],["ACE_Chemlight_IR",2,1],["ACE_Chemlight_HiRed",4,1],["ACE_Chemlight_HiGreen",2,1],["MPP_17rnd_9MM_147JHP_G17",2,17],["UK3CB_BAF_SmokeShellGreen",1,1],["MCC_PMAG_556_556_30_MK262_NAS3",5,30]]],["TRF_ZIPON",[["ACE_EarPlugs",1],["ACE_EHP",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["42cdo_vs17_item",1],["GX_UAVBattery",3],["NightCap_Gld_UW",1],["acex_intelitems_notepad",1,1],["GX_DEPLOYABLE_MAGAZINE_BLACKHORNET_UAV",1,100],["GX_DEPLOYABLE_MAGAZINE_RQ11B_UAV",1,100],["GX_DEPLOYABLE_MAGAZINE_UAV_01",1,100]]],"UKAF_BOONIE","Zulu_Gatorz_M_RG_BLK_PPL",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","TFAR_anprc152","ItemCompass","KAT_Cavmin",""]],     
["ZXX_MCC_KS1_FDE_SLK_NAS3","ZXX_MCC_KS3_FDE_SLK_NAS3","MCC_MCQ1_556_TAN","MCC_MCQ1_Shroud_556_TAN","MCC_MLOK_AFG_FDE","MCC_BCM_VFG_FDE","Z_G3_RG_KP_PCU_RG_G_H","UKSFOW","MCC_EXPS3_UnityX_FDE_Down","MCC_MicroT2_Down","MCC_Vortex_Elanor_Acro_TAN","UK3CB_BAF_G_Balaclava_Win","Zulu_Boogie_M_RG","Zulu_Gatorz_M_RG_BLK_PPL","Zulu_MFrame_A_M_RG_BLK_PPL"],    
"true",    
{}    
] spawn Wbk_AddKit;  
 
 
[    
_this,    
"Advanced Medic",    
[["ZXX_MCC_KS3_FDE_SLK_NAS3","MCC_MCQ1_Shroud_556_TAN","MCC_AR_NGAL_M600V_Tail_BLK_IRL","MCC_Vortex_Elanor_Acro_TAN",["MCC_PMAG_556_556_30_MK262_NAS3",30],[],"MCC_BCM_VFG_FDE"],[],["MPP_G19_BLK_9","MPP_G19_TC","MPP_X300T","MPP_ACRO_BLK",["MPP_17rnd_9MM_147JHP_G17",17],[],""],["Z_G3_RG_KP_PCU_RG_G_H",[["kat_IV_16",8],["ACE_adenosine",8],["kat_amiodarone",4],["ACE_elasticBandage",15],["ACE_packingBandage",15],["kat_chestSeal",10],["kat_EACA",8],["ACE_epinephrine",10],["kat_IO_FAST",4],["kat_fentanyl",2],["kat_ketamine",2],["kat_larynx",4],["ACE_morphine",8],["kat_naloxone",6],["kat_Pulseoximeter",2],["ACE_tourniquet",8],["kat_TXA",10],["kat_Carbonate",1,10],["ACE_painkillers",2,10]]],["TRF_SPIRITUS_A",[["tsp_sling",1],["ACE_CableTie",5],["ItemAndroidMisc",1],["MPP_bti_blk",1],["ACE_Clacker",1],["tsp_lockpick",1],["rhs_mag_mk84",2,1],["rhs_mag_m67",1,1],["UK3CB_BAF_SmokeShell",2,1],["ACE_Chemlight_IR",2,1],["ACE_Chemlight_HiRed",4,1],["ACE_Chemlight_HiGreen",2,1],["MPP_17rnd_9MM_147JHP_G17",2,17],["UK3CB_BAF_SmokeShellGreen",1,1],["MCC_PMAG_556_556_30_MK262_NAS3",5,30]]],["TRF_ZIPON",[["ACE_EarPlugs",1],["ACE_EHP",1],["ACE_IR_Strobe_Item",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["42cdo_vs17_item",1],["kat_accuvac",1],["kat_AED",1],["kat_BVM",1],["kat_stethoscope",1],["ACE_surgicalKit",1],["kat_aatKit",13],["ACE_plasmaIV",4],["ACE_plasmaIV_500",4],["ACE_splint",8],["NightCap_Gld_UW",1],["acex_intelitems_notepad",1,1]]],"UKAF_BOONIE","Zulu_Gatorz_M_RG_BLK_PPL",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","TFAR_anprc152","ItemCompass","KAT_Cavmin",""]],     
["ZXX_MCC_KS1_FDE_SLK_NAS3","ZXX_MCC_KS3_FDE_SLK_NAS3","MCC_MCQ1_556_TAN","MCC_MCQ1_Shroud_556_TAN","MCC_MLOK_AFG_FDE","MCC_BCM_VFG_FDE","Z_G3_RG_KP_PCU_RG_G_H","UKSFOW","MCC_EXPS3_UnityX_FDE_Down","MCC_MicroT2_Down","MCC_Vortex_Elanor_Acro_TAN","UK3CB_BAF_G_Balaclava_Win","Zulu_Boogie_M_RG","Zulu_Gatorz_M_RG_BLK_PPL","Zulu_MFrame_A_M_RG_BLK_PPL"],    
"true",    
{}    
] spawn Wbk_AddKit;  
 
 
[    
_this,    
"Point Man",    
[["MCC_RattlerLT_6_300_BLK_MPLFS_VFG","MCC_HuxWrx_Flow_762TI","MCC_AR18_NGAL_M600V_BLK_IRL","MCC_MicroT2",["MCC_L5AWM_300_30_125OTM",30],[],"MCC_BCM_VFG_BLK"],[],["MPP_G19_BLK_9","MPP_G19_TC","MPP_X300T","MPP_ACRO_BLK",["MPP_17rnd_9MM_147JHP_G17",17],[],""],["Z_C_MC_PCU_GRY_G_H",[["kat_IV_16",6],["ACE_adenosine",2],["kat_amiodarone",1],["ACE_elasticBandage",12],["ACE_packingBandage",12],["kat_chestSeal",8],["kat_EACA",2],["ACE_epinephrine",6],["kat_IO_FAST",2],["kat_larynx",2],["ACE_morphine",4],["kat_naloxone",2],["kat_Pulseoximeter",1],["ACE_splint",3],["ACE_tourniquet",8],["kat_TXA",2],["ACE_plasmaIV_500",4],["ACE_surgicalKit",1],["kat_Carbonate",1,10],["kat_Painkiller",2,4],["ACE_painkillers",2,10]]],["Friday_JPC",[["tsp_sling",1],["ACE_CableTie",5],["ItemAndroidMisc",1],["tsp_lockpick",1],["ACE_M26_Clacker",1],["tsp_breach_shock",1],["rhs_mag_mk84",5,1],["UK3CB_BAF_SmokeShell",2,1],["ACE_Chemlight_IR",4,1],["ACE_Chemlight_HiRed",6,1],["ACE_Chemlight_HiGreen",2,1],["MPP_17rnd_9MM_147JHP_G17",2,17],["UK3CB_BAF_SmokeShellGreen",1,1],["ACE_CTS9",1,1],["rhs_mag_an_m14_th3",1,1],["rhs_mag_m7a3_cs",2,1],["MCC_L5AWM_300_30_220OTMSUB",3,30],["MCC_L5AWM_300_30_78LD",1,30]]],["ZXX_JPC_Panel5",[["ACE_EarPlugs",1],["ACE_EHP",1],["ACE_IR_Strobe_Item",1],["kat_gasmaskFilter",1],["kat_mask_M04",1],["rhsusf_m112_mag",1,1],["tsp_breach_popper_auto_mag",2,1],["tsp_breach_block_mag",1,1],["tsp_breach_stick_mag",1,1]]],"Morgan_SF_CT_NP_VLI","Zulu_MFrame_M2_MC_BLK_PPL_G",["Hate_Smartphone_HUD","","","",[],[],""],["ItemMap","","TFAR_anprc152","ItemCompass","KAT_Cavmin","GPNVG_GLD_LOW_SF"]],     
["Z_C_MC_PCU_GRY_G_H","UKSFOW","UK3CB_BAF_G_Balaclava_Win","Zulu_Boogie_M2_MC","Zulu_Gatorz_M2_MC_BLK_PPL","Zulu_MFrame_A_M2_MC_BLK_PPL"],    
"true",    
{}    
] spawn Wbk_AddKit;  
 
 
[    
_this,    
"Technical Exploitation Specialist",    
[["MCC_RattlerLT_6_300_BLK_MPLFS","MCC_HuxWrx_Flow_762TI","MCC_AR18_NGAL_M600V_BLK_IRL","MCC_MicroT2",["MCC_L5AWM_300_30_125OTM",30],[],"MCC_BCM_VFG_BLK"],[],["MPP_G19_BLK_9","MPP_G19_TC","MPP_X300T","MPP_ACRO_BLK",["MPP_17rnd_9MM_147JHP_G17",17],[],""],["Z_C_MC_PCU_GRY_G_H",[["kat_IV_16",6],["ACE_adenosine",2],["kat_amiodarone",1],["ACE_elasticBandage",12],["ACE_packingBandage",12],["kat_chestSeal",8],["kat_EACA",2],["ACE_epinephrine",6],["kat_IO_FAST",2],["kat_larynx",2],["ACE_morphine",4],["kat_naloxone",2],["kat_Pulseoximeter",1],["ACE_splint",3],["ACE_tourniquet",8],["kat_TXA",2],["ACE_plasmaIV_500",4],["ACE_surgicalKit",1],["kat_Carbonate",1,10],["kat_Painkiller",2,4],["ACE_painkillers",2,10]]],["Friday_JPC",[["tsp_sling",1],["ACE_CableTie",5],["ItemAndroidMisc",1],["tsp_lockpick",1],["rhs_mag_mk84",3,1],["rhs_mag_m67",1,1],["UK3CB_BAF_SmokeShell",2,1],["ACE_Chemlight_IR",4,1],["ACE_Chemlight_HiRed",6,1],["ACE_Chemlight_HiGreen",2,1],["MPP_17rnd_9MM_147JHP_G17",2,17],["UK3CB_BAF_SmokeShellGreen",1,1],["rhs_mag_an_m14_th3",2,1],["MCC_L5AWM_300_30_125OTM",1,30],["MCC_L5AWM_300_30_220OTMSUB",3,30],["MCC_L5AWM_300_30_78LD",1,30]]],["ZXX_Backpack_1_MC_JPC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["kat_gasmaskFilter",1],["kat_mask_M04",1],["ACE_bodyBag",8],["ACE_EHP",1],["ACE_plasmaIV",2],["ACE_plasmaIV_500",3],["ACE_surgicalKit",1]]],"Morgan_SF_CT_NP_VLI","Zulu_MFrame_M2_MC_BLK_PPL_G",["Nikon_DSLR_HUD","","","",[],[],""],["ItemMap","","TFAR_anprc152","ItemCompass","KAT_Cavmin","GPNVG_GLD_LOW_SF"]],     
["Z_C_MC_PCU_GRY_G_H","UKSFOW","UK3CB_BAF_G_Balaclava_Win","Zulu_Boogie_M2_MC","Zulu_Gatorz_M2_MC_BLK_PPL","Zulu_MFrame_A_M2_MC_BLK_PPL"],    
"true",    
{}    
] spawn Wbk_AddKit;  
 
 
[    
_this,    
"Capture Specialist",    
[["MCC_RattlerLT_6_300_BLK_MPLFS","MCC_HuxWrx_Flow_762TI","MCC_AR18_NGAL_M600V_BLK_IRL","MCC_MicroT2",["MCC_L5AWM_300_30_125OTM",30],[],"MCC_BCM_VFG_BLK"],[],["MPP_G19_BLK_9","MPP_G19_TC","MPP_X300T","MPP_ACRO_BLK",["MPP_17rnd_9MM_147JHP_G17",17],[],""],["Z_C_MC_PCU_GRY_G_H",[["kat_IV_16",6],["ACE_adenosine",2],["kat_amiodarone",1],["ACE_elasticBandage",12],["ACE_packingBandage",12],["kat_chestSeal",8],["kat_EACA",2],["ACE_epinephrine",6],["kat_IO_FAST",2],["kat_larynx",2],["ACE_morphine",4],["kat_naloxone",2],["kat_Pulseoximeter",1],["ACE_splint",3],["ACE_tourniquet",8],["kat_TXA",2],["ACE_plasmaIV_500",4],["ACE_surgicalKit",1],["kat_Carbonate",1,10],["kat_Painkiller",2,4],["ACE_painkillers",2,10]]],["Friday_JPC",[["tsp_sling",1],["ACE_CableTie",5],["ItemAndroidMisc",1],["tsp_lockpick",1],["rhs_mag_mk84",3,1],["UK3CB_BAF_SmokeShell",2,1],["ACE_Chemlight_IR",4,1],["ACE_Chemlight_HiRed",6,1],["ACE_Chemlight_HiGreen",2,1],["MPP_17rnd_9MM_147JHP_G17",2,17],["UK3CB_BAF_SmokeShellGreen",1,1],["rhs_mag_an_m14_th3",1,1],["rhs_mag_m7a3_cs",1,1],["MCC_L5AWM_300_30_220OTMSUB",3,30],["MCC_L5AWM_300_30_125OTM",2,30],["MCC_L5AWM_300_30_78LD",1,30]]],["ZXX_JPC_Panel1",[["ACE_EarPlugs",1],["ACE_EHP",1],["ACE_IR_Strobe_Item",1],["kat_gasmaskFilter",1],["kat_mask_M04",1],["ACE_CableTie",15],["G_Blindfold_01_black_F",3],["H_EarProtectors_black_F",3],["acex_intelitems_notepad",1,1]]],"Morgan_SF_CT_NP_VLI","Zulu_MFrame_M2_MC_BLK_PPL_G",["Hate_Smartphone_HUD","","","",[],[],""],["ItemMap","","TFAR_anprc152","ItemCompass","KAT_Cavmin","GPNVG_GLD_LOW_SF"]],     
["Z_C_MC_PCU_GRY_G_H","UKSFOW","UK3CB_BAF_G_Balaclava_Win","Zulu_Boogie_M2_MC","Zulu_Gatorz_M2_MC_BLK_PPL","Zulu_MFrame_A_M2_MC_BLK_PPL"],    
"true",    
{}    
] spawn Wbk_AddKit;  
 
 
[    
_this,    
"Cover Man",    
[["MCC_LMT_MARSL_SPECWAR_6ARC_DE_SLK","MCC_HuxWrx_Flow_762TI","MCC_AR_NGAL_M600V_Tail_BLK_IRL","MCC_Mark5_10_BLK",["MCC_ICM_6ARC_20RD_GPR",20],[],"MSS_Atlas_BT10"],[],["MPP_G17_BLK_BLK_9","MPP_bti_blk","MPP_X300T","MPP_ACRO_BLK",["MPP_22rnd_9MM_147JHP_G17",22],[],""],["Z_C_MC_PCU_GRY_G_H",[["kat_IV_16",6],["ACE_adenosine",2],["kat_amiodarone",1],["ACE_elasticBandage",12],["ACE_packingBandage",12],["kat_chestSeal",8],["kat_EACA",2],["ACE_epinephrine",6],["kat_IO_FAST",2],["kat_larynx",2],["ACE_morphine",4],["kat_naloxone",2],["kat_Pulseoximeter",1],["ACE_splint",3],["ACE_tourniquet",8],["kat_TXA",2],["ACE_plasmaIV_500",4],["ACE_surgicalKit",1],["kat_Carbonate",1,10],["kat_Painkiller",2,4],["ACE_painkillers",2,10]]],["Friday_JPC",[["tsp_sling",1],["ACE_CableTie",5],["ItemAndroidMisc",1],["tsp_lockpick",1],["rhs_mag_mk84",3,1],["UK3CB_BAF_SmokeShell",2,1],["ACE_Chemlight_IR",4,1],["ACE_Chemlight_HiRed",6,1],["ACE_Chemlight_HiGreen",2,1],["UK3CB_BAF_SmokeShellGreen",1,1],["rhs_mag_an_m14_th3",1,1],["MPP_22rnd_9MM_147JHP_G17",3,22],["MCC_ICM_6ARC_20RD_GPR",5,20],["MCC_ICM_6ARC_20RD_ADVAP",2,20],["MCC_ICM_6ARC_20RD_GPR",1,0]]],["ZXX_JPC_Panel4NB",[["ACE_EarPlugs",1],["ACE_EHP",1],["ACE_IR_Strobe_Item",1],["kat_gasmaskFilter",1],["kat_mask_M04",1],["ACE_ATragMX",1],["ACE_Kestrel4500",1],["ACE_RangeCard",1],["acex_intelitems_notepad",1,1]]],"Ditch_SF_CT_NP_VLI","Zulu_MFrame_M2_MC_BLK_PPL_G",["Hate_Smartphone_HUD","","","",[],[],""],["ItemMap","","TFAR_anprc152","ItemCompass","KAT_Cavmin","BNVD_Galahad_U"]],     
["Z_G2_MC_KP_PCU_GRY_G_H","UKSFOW","UK3CB_BAF_G_Balaclava_Win","Zulu_Boogie_M2_MC","Zulu_Gatorz_M2_MC_BLK_PPL","Zulu_MFrame_A_M2_MC_BLK_PPL"],    
"true",    
{}    
] spawn Wbk_AddKit;  
 
[    
_this,    
"JSFAW Pilot",    
[["ZXX_MCC_KS3_FDE_SLK_NAS3","MCC_MCQ1_556_TAN","MCC_NGAL_AR_Top_IRL","MCC_EXPS3_FDE",["MCC_PMAG_556_556_30_MK262_NAS3",30],[],""],[],["MPP_G19_BLK_9","","MPP_X300T","",["MPP_15rnd_9MM_147FMJ_G19",15],[],""],["Z_G3_MC_KP_PCU_BLK_G_H",[["kat_IV_16",4],["ACE_adenosine",2],["kat_amiodarone",1],["ACE_elasticBandage",12],["ACE_packingBandage",12],["kat_chestSeal",6],["kat_EACA",2],["ACE_epinephrine",5],["kat_IO_FAST",2],["kat_larynx",2],["ACE_morphine",4],["kat_naloxone",2],["kat_Pulseoximeter",1],["ACE_tourniquet",6],["kat_TXA",2],["ACE_plasmaIV_500",1],["kat_Carbonate",1,10],["kat_Painkiller",1,4],["ACE_painkillers",2,10]]],["Friday_JPC_NB",[["ACE_IR_Strobe_Item",1],["ItemAndroidMisc",1],["ACE_CableTie",1],["ACE_Clacker",1],["42cdo_vs17_item",1],["MPP_15rnd_9MM_147FMJ_G19",2,15],["MCC_PMAG_556_556_30_MK262_NAS3",3,30],["UK3CB_BAF_SmokeShell",1,1],["DemoCharge_Remote_Mag",1,1]]],["satcom_01",[["ACE_EHP",1],["ACE_EarPlugs",1],["ACE_splint",3],["ACE_surgicalKit",1],["ACE_plasmaIV_500",3]]],"Bump_MC_HS6_NCW_AMPD_NVL","Zulu_Boogie_MM_MC",[],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","KAT_STS","GPNVG_GLD_LOW_SF"]],     
["UKSFOW","UK3CB_BAF_G_Balaclava_Win","Zulu_Boogie_MM_MC","Zulu_MFrame_BLK_CLR","Z_G3_MC_KP_PCU_BLK_G_H","Zulu_NoFrame_A_M_MC_BLK_PPL"],    
"true",    
{}    
] spawn Wbk_AddKit; 