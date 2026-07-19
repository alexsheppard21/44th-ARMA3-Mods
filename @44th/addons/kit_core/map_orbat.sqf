// ORBAT classname -> role key. Many classes (e.g. per-section duplicates) map
// to one shared role key. Classes with no entry spawn with base uniform/rank
// only (no kit). Keep in sync with data_<FACTION>.sqf keys.

// ── RBN Platoon HQ ────────────────────────────────────────────────────────
["RBN_PlatoonCommander", ["_44th_RBN_PlatoonCommander"]] call _map;
["RBN_PlatoonSergeant",  ["_44th_RBN_PlatoonSergeant"]] call _map;
["RBN_PlatoonSignaller", ["_44th_RBN_PlatoonSignaller"]] call _map;
["RBN_PlatoonMedic",     ["_44th_RBN_PlatoonMedic"]] call _map;
["RBN_PlatoonUAVOperator", ["_44th_RBN_PlatoonUAVOperator"]] call _map;

// ── RBN Sections (Zulu / Victor / Juliet share loadouts) ──────────────────
["RBN_SectionCommander", ["_44th_RBN_SectionCommander_Zulu","_44th_RBN_SectionCommander_Victor","_44th_RBN_SectionCommander_Juliet"]] call _map;
["RBN_Section2IC",       ["_44th_RBN_Section2IC_Zulu","_44th_RBN_Section2IC_Victor","_44th_RBN_Section2IC_Juliet"]] call _map;
["RBN_Sharpshooter",     ["_44th_RBN_Sharpshooter_Zulu","_44th_RBN_Sharpshooter_Victor","_44th_RBN_Sharpshooter_Juliet"]] call _map;
["RBN_Grenadier",        ["_44th_RBN_Grenadier_Zulu","_44th_RBN_Grenadier_Victor","_44th_RBN_Grenadier_Juliet"]] call _map;
["RBN_TeamMedic",        ["_44th_RBN_TeamMedic_Zulu","_44th_RBN_TeamMedic_Victor","_44th_RBN_TeamMedic_Juliet"]] call _map;
["RBN_MachineGunner",    ["_44th_RBN_MachineGunner_Zulu","_44th_RBN_MachineGunner_Victor","_44th_RBN_MachineGunner_Juliet"]] call _map;
["RBN_Rifleman",         ["_44th_RBN_Rifleman_Zulu","_44th_RBN_Rifleman_Victor","_44th_RBN_Rifleman_Juliet"]] call _map;

// ── RBN Support (1:1) ─────────────────────────────────────────────────────
["RBNSUP_Engineer",          ["_44th_RBNSup_Engineer"]] call _map;
["RBNSUP_Breacher",          ["_44th_RBNSup_Breacher"]] call _map;
["RBNSUP_GPMGGunner",        ["_44th_RBNSup_GPMGGunner"]] call _map;
["RBNSUP_GPMGAssistant",     ["_44th_RBNSup_GPMGAssistant"]] call _map;
["RBNSUP_MortarGunner",      ["_44th_RBNSup_MortarGunner"]] call _map;
["RBNSUP_MortarAssistant",   ["_44th_RBNSup_MortarAssistant"]] call _map;
["RBNSUP_JavelinGunner",     ["_44th_RBNSup_JavelinGunner"]] call _map;
["RBNSUP_JavelinAssistant",  ["_44th_RBNSup_JavelinAssistant"]] call _map;
["RBNSUP_Sniper",            ["_44th_RBNSup_Sniper"]] call _map;
["RBNSUP_SniperAntiMaterial",["_44th_RBNSup_Sniper_AntiMaterial"]] call _map;
["RBNSUP_Spotter",           ["_44th_RBNSup_Spotter"]] call _map;
["RBNSUP_Crewman",           ["_44th_RBNSup_Crewman"]] call _map;
["RBNSUP_Pilot",             ["_44th_RBNSup_Pilot"]] call _map;

// ── Ranger (1:1) ──────────────────────────────────────────────────────────
["RANGER_TeamCommander",     ["_44th_Ranger_TeamCommander"]] call _map;
["RANGER_TeamSergeant",      ["_44th_Ranger_TeamSergeant"]] call _map;
["RANGER_JointFiresObserver",["_44th_Ranger_JFO"]] call _map;
["RANGER_PartnerLiason",     ["_44th_Ranger_PartnerLiaison"]] call _map;
["RANGER_UASOperator",       ["_44th_Ranger_UASOperator"]] call _map;
["RANGER_EWOperator",        ["_44th_Ranger_EWOperator"]] call _map;
["RANGER_TeamMedic",         ["_44th_Ranger_TeamMedic"]] call _map;
["RANGER_LeadBreacher",      ["_44th_Ranger_LeadBreacher"]] call _map;
["RANGER_LeadScout",         ["_44th_Ranger_LeadScout"]] call _map;
["RANGER_SupportOperator",   ["_44th_Ranger_SupportOperator"]] call _map;
["RANGER_Crewman",           ["_44th_Ranger_Crewman"]] call _map;
["RANGER_Pilot",             ["_44th_Ranger_Pilot"]] call _map;

// ── SFSG Command (Bulldog) ────────────────────────────────────────────────
["SFSG_PlatoonCommander", ["_44th_SFSG_PlatoonCommander"]] call _map;
["SFSG_HQDroneOperator",  ["_44th_SFSG_HQDroneOperator"]] call _map;

// ── SFSG Assault Sections (Zulu / Victor / Romeo share loadouts) ──────────
["SFSG_SectionCommander",    ["_44th_SFSG_SectionCommander_Zulu","_44th_SFSG_SectionCommander_Victor","_44th_SFSG_SectionCommander_Romeo"]] call _map;
["SFSG_Section2iC",          ["_44th_SFSG_Section2iC_Zulu","_44th_SFSG_Section2iC_Victor","_44th_SFSG_Section2iC_Romeo"]] call _map;
["SFSG_LeadAssaulter",       ["_44th_SFSG_LeadAssaulter_Zulu","_44th_SFSG_LeadAssaulter_Victor","_44th_SFSG_LeadAssaulter_Romeo"]] call _map;
["SFSG_SectionGrenadier",    ["_44th_SFSG_SectionGrenadier_Zulu","_44th_SFSG_SectionGrenadier_Victor","_44th_SFSG_SectionGrenadier_Romeo"]] call _map;
["SFSG_SectionMedic",        ["_44th_SFSG_SectionMedic_Zulu","_44th_SFSG_SectionMedic_Victor","_44th_SFSG_SectionMedic_Romeo"]] call _map;
["SFSG_SectionGunner",       ["_44th_SFSG_SectionGunner_Zulu","_44th_SFSG_SectionGunner_Victor","_44th_SFSG_SectionGunner_Romeo"]] call _map;
["SFSG_SectionSharpshooter", ["_44th_SFSG_Sharpshooter_Zulu","_44th_SFSG_Sharpshooter_Victor","_44th_SFSG_Sharpshooter_Romeo"]] call _map;
["SFSG_AntiTankRifleman",    ["_44th_SFSG_Rifleman_AT_Zulu","_44th_SFSG_Rifleman_AT_Victor","_44th_SFSG_Rifleman_AT_Romeo"]] call _map;

// ── SFSG Juliet Support Section ───────────────────────────────────────────
["SFSG_SupportCommander",    ["_44th_SFSG_SupportCommander_Juliet"]] call _map;
["SFSG_SupportSection2iC",   ["_44th_SFSG_SupportSection2iC_Juliet"]] call _map;
["SFSG_HeavySupportGunner",  ["_44th_SFSG_HeavySupportGunner1_Juliet","_44th_SFSG_HeavySupportGunner2_Juliet"]] call _map;
["SFSG_AssistantGunner",     ["_44th_SFSG_AssistantGunner_Juliet"]] call _map;
["SFSG_ATSpecialist1",       ["_44th_SFSG_ATSpecialist1_Juliet"]] call _map;
["SFSG_ATSpecialist2",       ["_44th_SFSG_ATSpecialist2_Juliet"]] call _map;
["SFSG_SupportMedic",        ["_44th_SFSG_SupportMedic_Juliet"]] call _map;

// ── SRR & SAS ─────────────────────────────────────────────────────────────
// PENDING: these factions have fewer kits than ORBAT slots. Mapping added
// after confirmation of how to handle the gaps. See map_srr_sas.sqf.
#include "map_srr_sas.sqf"
