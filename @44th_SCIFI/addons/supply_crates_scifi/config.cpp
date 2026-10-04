class CfgPatches
{
    class Supply_Crates_SciFi_44th
    {
        units[] = {
            "_44th_Crate_Rifles_UCNMC",
            "_44th_Crate_MarksmanWeapons_UCNMC",
            "_44th_Crate_SupportWeapons_UCNMC",
            "_44th_Crate_Launchers_UCNMC",
            "_44th_Crate_Sidearms_UCNMC",
            "_44th_Crate_RifleAmmo_UCNMC",
            "_44th_Crate_MarksmanAmmo_UCNMC",
            "_44th_Crate_SupportAmmo_UCNMC",
            "_44th_Crate_LauncherAmmo_UCNMC",
            "_44th_Crate_SidearmAmmo_UCNMC",
            "_44th_Crate_ShotgunAmmo_UCNMC",
            "_44th_Crate_Grenades_UCNMC",
            "_44th_Crate_MedicalBasic_UCNMC",
            "_44th_Crate_MedicalAdvanced_UCNMC",
            "_44th_Crate_Engineer_UCNMC",
            "_44th_Crate_Mines_UCNMC",
            "_44th_Crate_Command_UCNMC",
            "_44th_Crate_Equipment_UCNMC",
            "_44th_LogisticsPoint_UCNMC"
        };
        weapons[] = {};
        requiredVersion = 0.1;
        // Hard-requires its modpack: on a modlist without it, skip this addon
        // quietly instead of raising a missing-addon warning and loading broken.
        skipWhenMissingDependencies = 1;
        // The crates inherit from OPTRE models, so those three OPTRE addons are
        // hard dependencies. TKE is listed too: nothing inherits from it, but
        // every round in these crates comes from it, and requiring it keeps this
        // entry off a modlist where the contents would not exist.
        requiredAddons[] = {
            "cba_xeh",
            "Logistics_44th",
            "OPTRE_UNSC_Structure_Military_Crate",
            "OPTRE_UNSC_Structure_Containers",
            "OPTRE_Misc_Crates",
            "TKE_Unit_Groups"
        };
        author = "FullMetalShep";
        version = 2;
    };
};

class CfgFunctions
{
    class FTH
    {
        class SupplyCratesSciFi
        {
            file = "\44th_SupplyCratesSciFi\supply_crates_scifi";
            // Hands this addon's crate catalogue to the shared logistics
            // engine in @44th.
            class registerCratesSciFi { preInit = 1; };
            // Fills any crate below from one contents table, keyed by class.
            class fillCrateUCNMC {};
        };
    };
};

// Every crate is the same apart from class, model and name.
#define FTH_CRATE(CLS,BASE,NAME) \
    class CLS : BASE \
    { \
        scope = 2; \
        scopeCurator = 2; \
        displayName = NAME; \
        author = "FullMetalShep"; \
        editorCategory = "FTH_Cat_44thMods"; \
        editorSubcategory = "FTH_Sub_SupplyCrates"; \
    };

// Fill runs server-side only (guarded inside the function).
#define FTH_FILL(CLS) \
    class CLS { class _44th_supplycrates_scifi { init = "(_this select 0) spawn FTH_fnc_fillCrateUCNMC"; }; };

class CfgVehicles
{
    // OPTRE military cases (OPTRE_UNSC_Structure_Containers). All three inherit
    // cargo space from Land_packing_crate_lg_blue and are ACE drag/carry/cargo
    // capable. Long weapons in the long case, medical in the medic case,
    // everything else in the small case. Contents: fn_fillCrateUCNMC.sqf.
    class Land_optre_milcrate_h2smallcrate_medic;
    class Land_optre_milcrate_h2smallcrate;
    class Land_optre_milcrate_h3_long;
    class OPTRE_Weapon_Crate_Marines_S;   // OPTRE_UNSC_Structure_Military_Crate

    // --- LOGISTICS POINT ---
    // The SciFi twin of _44th_LogisticsPoint. Players ACE-interact with it to
    // have any crate below spawned beside it. Also works on any object flagged
    // in its Eden init field with
    //   this setVariable ["FTH_logisticsPoint", true, true];
    // On the UNSC Marines standard-issue weapon crate (the shipping container
    // it used before was far too big). That crate comes pre-stocked with OPTRE
    // weapons; the empty Transport* classes below remove them, so the point
    // only ever hands out crates through its menu.
    class _44th_LogisticsPoint_UCNMC : OPTRE_Weapon_Crate_Marines_S
    {
        scope = 2;
        scopeCurator = 2;
        displayName = "44th Logistics Point (UCNMC)";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_Logistics";
        class TransportWeapons {};
        class TransportMagazines {};
        class TransportItems {};
        class TransportBackpacks {};
    };

    // --- WEAPONS - kit builds with attachments, no magazines ---
    FTH_CRATE(_44th_Crate_Rifles_UCNMC, Land_optre_milcrate_h3_long, "44 UCNMC Weapons - Rifles")
    FTH_CRATE(_44th_Crate_MarksmanWeapons_UCNMC, Land_optre_milcrate_h3_long, "44 UCNMC Weapons - Marksman")
    FTH_CRATE(_44th_Crate_SupportWeapons_UCNMC, Land_optre_milcrate_h3_long, "44 UCNMC Weapons - Support (SAW)")
    FTH_CRATE(_44th_Crate_Launchers_UCNMC, Land_optre_milcrate_h3_long, "44 UCNMC Weapons - Launchers")
    FTH_CRATE(_44th_Crate_Sidearms_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Weapons - Sidearms")

    // --- AMMUNITION ---
    FTH_CRATE(_44th_Crate_RifleAmmo_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Ammo - Rifle")
    FTH_CRATE(_44th_Crate_MarksmanAmmo_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Ammo - Marksman / Sniper")
    FTH_CRATE(_44th_Crate_SupportAmmo_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Ammo - Support (SAW)")
    FTH_CRATE(_44th_Crate_LauncherAmmo_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Ammo - Launcher")
    FTH_CRATE(_44th_Crate_SidearmAmmo_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Ammo - Sidearm")
    FTH_CRATE(_44th_Crate_ShotgunAmmo_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Ammo - Shotgun")
    FTH_CRATE(_44th_Crate_Grenades_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Ammo - Grenades & Signals")

    // --- MEDICAL ---
    FTH_CRATE(_44th_Crate_MedicalBasic_UCNMC, Land_optre_milcrate_h2smallcrate_medic, "44 UCNMC Medical - Basic")
    FTH_CRATE(_44th_Crate_MedicalAdvanced_UCNMC, Land_optre_milcrate_h2smallcrate_medic, "44 UCNMC Medical - Advanced (Corpsman)")

    // --- SPECIALIST ---
    FTH_CRATE(_44th_Crate_Engineer_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Specialist - Engineer")
    FTH_CRATE(_44th_Crate_Mines_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Specialist - Mines")
    FTH_CRATE(_44th_Crate_Command_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Specialist - Command (Bulldog)")
    FTH_CRATE(_44th_Crate_Equipment_UCNMC, Land_optre_milcrate_h2smallcrate, "44 UCNMC Specialist - Equipment")
};

class Extended_InitPost_EventHandlers
{
    FTH_FILL(_44th_Crate_Rifles_UCNMC)
    FTH_FILL(_44th_Crate_MarksmanWeapons_UCNMC)
    FTH_FILL(_44th_Crate_SupportWeapons_UCNMC)
    FTH_FILL(_44th_Crate_Launchers_UCNMC)
    FTH_FILL(_44th_Crate_Sidearms_UCNMC)
    FTH_FILL(_44th_Crate_RifleAmmo_UCNMC)
    FTH_FILL(_44th_Crate_MarksmanAmmo_UCNMC)
    FTH_FILL(_44th_Crate_SupportAmmo_UCNMC)
    FTH_FILL(_44th_Crate_LauncherAmmo_UCNMC)
    FTH_FILL(_44th_Crate_SidearmAmmo_UCNMC)
    FTH_FILL(_44th_Crate_ShotgunAmmo_UCNMC)
    FTH_FILL(_44th_Crate_Grenades_UCNMC)
    FTH_FILL(_44th_Crate_MedicalBasic_UCNMC)
    FTH_FILL(_44th_Crate_MedicalAdvanced_UCNMC)
    FTH_FILL(_44th_Crate_Engineer_UCNMC)
    FTH_FILL(_44th_Crate_Mines_UCNMC)
    FTH_FILL(_44th_Crate_Command_UCNMC)
    FTH_FILL(_44th_Crate_Equipment_UCNMC)
};

class CfgEditorCategories
{
    class FTH_Cat_44thMods
    {
        displayName = "44th Mods";
    };
};

class CfgEditorSubcategories
{
    class FTH_Sub_SupplyCrates { displayName = "Supply Crates"; };
    class FTH_Sub_Logistics    { displayName = "Logistics"; };
};
