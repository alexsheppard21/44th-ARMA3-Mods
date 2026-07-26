class CfgPatches
{
    class Supply_Crates_44th
    {
        units[] = {
            "_44th_Crate_Medical",
            "_44th_Crate_FireSupport_Ranger",
            "_44th_Crate_Precision_Ranger",
            "_44th_Crate_AntiArmour_Ranger",
            "_44th_Crate_Section_Ranger",
            "_44th_Crate_SniperAmmo_RBN",
            "_44th_Crate_Section_RBN",
            "_44th_Crate_EOD_RBN",
            "_44th_Crate_FireSupport_SFSG",
            "_44th_Crate_Section_SFSG",
            "_44th_Crate_Precision_SFSG",
            "_44th_Crate_SRR",
            "_44th_Crate_SAS",
            "_44th_Crate_SAS_Juliet",
            "_44th_LogisticsPoint"
        };
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = {
            "A3_Supplies_F_Exp_Ammoboxes",
            "cba_xeh",
            "UK3CB_BAF_Units_ACE"
        };
        author = "FullMetalShep";
        version = 30;
    };
};

class CfgFunctions
{
    class FTH
    {
        class Logistics
        {
            file = "\44th_SupplyCrates\supply_crates";
            // Server: crate-spawn event handler. Client: ACE "Request Supplies"
            // menu on the logistics point (see fn_logisticsInit.sqf).
            class logisticsInit { postInit = 1; };
            // Builds the ACE action tree on a class or a single object.
            class logisticsActions {};
            // Promotes any runtime object into a logistics point.
            class registerLogisticsPoint {};
            // Server-side crate creation.
            class spawnSupplyCrate {};
        };
    };
};

class CfgVehicles
{
    class Box_NATO_Equip_F;
    class Box_T_NATO_Wps_F;
    class UK3CB_BAF_Box_Section_Supplies_ACE;
    class Land_CargoBox_V1_F;

    // --- LOGISTICS POINT ---
    // Players ACE-interact with this to have any of the crates below spawned
    // beside it. Also works on any object flagged in its Eden init field with
    //   this setVariable ["FTH_logisticsPoint", true, true];
    class _44th_LogisticsPoint : Land_CargoBox_V1_F
    {
        scope = 2;
        scopeCurator = 2;
        displayName = "44th Logistics Point";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_Logistics";
    };

    // --- MEDICAL ---
    class _44th_Crate_Medical : Box_NATO_Equip_F
    {
        displayName = "44th Medical Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    // --- RANGER ---
    class _44th_Crate_FireSupport_Ranger : Box_T_NATO_Wps_F
    {
        displayName = "44 RANGER Fire Support SME";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    class _44th_Crate_Precision_Ranger : Box_T_NATO_Wps_F
    {
        displayName = "44 RANGER Precision SME";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    class _44th_Crate_AntiArmour_Ranger : Box_T_NATO_Wps_F
    {
        displayName = "44 RANGER Anti-Armour SME";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    class _44th_Crate_Section_Ranger : UK3CB_BAF_Box_Section_Supplies_ACE
    {
        displayName = "44 RANGER 11-Man Section Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    // --- RBN ---
    class _44th_Crate_SniperAmmo_RBN : Box_T_NATO_Wps_F
    {
        displayName = "44 RBN Sniper and Spotter Ammo";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    class _44th_Crate_Section_RBN : UK3CB_BAF_Box_Section_Supplies_ACE
    {
        displayName = "44 RBN 8-Man Section Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    class _44th_Crate_EOD_RBN : Box_T_NATO_Wps_F
    {
        displayName = "44 RBN EOD/Breaching Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    // --- SFSG ---
    class _44th_Crate_FireSupport_SFSG : Box_T_NATO_Wps_F
    {
        displayName = "44 SFSG Fire Support Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    class _44th_Crate_Section_SFSG : UK3CB_BAF_Box_Section_Supplies_ACE
    {
        displayName = "44 SFSG 8-Man Section Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    class _44th_Crate_Precision_SFSG : Box_T_NATO_Wps_F
    {
        displayName = "44 SFSG Precision Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    // --- SPECIAL FORCES ---
    class _44th_Crate_SRR : UK3CB_BAF_Box_Section_Supplies_ACE
    {
        displayName = "44 SRR Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    class _44th_Crate_SAS : UK3CB_BAF_Box_Section_Supplies_ACE
    {
        displayName = "44 SAS Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    class _44th_Crate_SAS_Juliet : UK3CB_BAF_Box_Section_Supplies_ACE
    {
        displayName = "44 SAS (Juliet) Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

};

class Extended_InitPost_EventHandlers
{
    class _44th_Crate_Medical { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Medical.sqf'"; }; };
    class _44th_Crate_FireSupport_Ranger { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_FireSupport_Ranger.sqf'"; }; };
    class _44th_Crate_Precision_Ranger { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Precision_Ranger.sqf'"; }; };
    class _44th_Crate_AntiArmour_Ranger { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_AntiArmour_Ranger.sqf'"; }; };
    class _44th_Crate_Section_Ranger { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Section_Ranger.sqf'"; }; };
    class _44th_Crate_SniperAmmo_RBN { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_SniperAmmo_RBN.sqf'"; }; };
    class _44th_Crate_Section_RBN { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Section_RBN.sqf'"; }; };
    class _44th_Crate_EOD_RBN { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_EOD_RBN.sqf'"; }; };
    class _44th_Crate_FireSupport_SFSG { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_FireSupport_SFSG.sqf'"; }; };
    class _44th_Crate_Section_SFSG { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Section_SFSG.sqf'"; }; };
    class _44th_Crate_Precision_SFSG { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Precision_SFSG.sqf'"; }; };
    class _44th_Crate_SRR { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_SRR.sqf'"; }; };
    class _44th_Crate_SAS { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_SAS.sqf'"; }; };
    class _44th_Crate_SAS_Juliet { class _44th_supplycrates { init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_SAS_Juliet.sqf'"; }; };

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
