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
            "_44th_Crate_SAS"
        };
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = {
            "A3_Supplies_F_Exp_Ammoboxes",
            "UK3CB_BAF_Units_ACE"
        };
        author = "FullMetalShep";
        version = 1;
    };
};

class CfgVehicles
{
    class Box_NATO_Equip_F;
    class Box_T_NATO_Wps_F;
    class UK3CB_BAF_Box_Section_Supplies_ACE;

    // --- MEDICAL ---
    class _44th_Crate_Medical : Box_NATO_Equip_F
    {
        displayName = "44th Medical Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Medical.sqf'";
        };
    };

    // --- RANGER ---
    class _44th_Crate_FireSupport_Ranger : Box_T_NATO_Wps_F
    {
        displayName = "44 RANGER Fire Support SME";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_FireSupport_Ranger.sqf'";
        };
    };

    class _44th_Crate_Precision_Ranger : Box_T_NATO_Wps_F
    {
        displayName = "44 RANGER Precision SME";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Precision_Ranger.sqf'";
        };
    };

    class _44th_Crate_AntiArmour_Ranger : Box_T_NATO_Wps_F
    {
        displayName = "44 RANGER Anti-Armour SME";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_AntiArmour_Ranger.sqf'";
        };
    };

    class _44th_Crate_Section_Ranger : UK3CB_BAF_Box_Section_Supplies_ACE
    {
        displayName = "44 RANGER 11-Man Section Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Section_Ranger.sqf'";
        };
    };

    // --- RBN ---
    class _44th_Crate_SniperAmmo_RBN : Box_T_NATO_Wps_F
    {
        displayName = "44 RBN Sniper and Spotter Ammo";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_SniperAmmo_RBN.sqf'";
        };
    };

    class _44th_Crate_Section_RBN : UK3CB_BAF_Box_Section_Supplies_ACE
    {
        displayName = "44 RBN 8-Man Section Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Section_RBN.sqf'";
        };
    };

    class _44th_Crate_EOD_RBN : Box_T_NATO_Wps_F
    {
        displayName = "44 RBN EOD/Breaching Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_EOD_RBN.sqf'";
        };
    };

    // --- SFSG ---
    class _44th_Crate_FireSupport_SFSG : Box_T_NATO_Wps_F
    {
        displayName = "44 SFSG Fire Support Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_FireSupport_SFSG.sqf'";
        };
    };

    class _44th_Crate_Section_SFSG : UK3CB_BAF_Box_Section_Supplies_ACE
    {
        displayName = "44 SFSG 8-Man Section Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Section_SFSG.sqf'";
        };
    };

    class _44th_Crate_Precision_SFSG : Box_T_NATO_Wps_F
    {
        displayName = "44 SFSG Precision Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_Precision_SFSG.sqf'";
        };
    };

    // --- SPECIAL FORCES ---
    class _44th_Crate_SRR : UK3CB_BAF_Box_Section_Supplies_ACE
    {
        displayName = "44 SRR Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_SRR.sqf'";
        };
    };

    class _44th_Crate_SAS : UK3CB_BAF_Box_Section_Supplies_ACE
    {
        displayName = "44 SAS Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_SupplyCrates\supply_crates\fn_fillCrate_SAS.sqf'";
        };
    };
};

class CfgFunctions
{
    class FTTH
    {
        class SupplyCrates
        {
            file = "\44th_SupplyCrates\supply_crates";
            class postInit { postInit = 1; };
        };
    };
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
};
