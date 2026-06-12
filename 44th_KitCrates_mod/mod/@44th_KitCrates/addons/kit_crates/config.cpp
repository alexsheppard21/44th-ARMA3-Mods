class CfgPatches
{
    class KitCrates_44th
    {
        units[] = {
            "_44th_KitCrate_RBN",
            "_44th_KitCrate_RBNSUP",
            "_44th_KitCrate_RANGER",
            "_44th_KitCrate_SFSG",
            "_44th_KitCrate_SRR",
            "_44th_KitCrate_SAS"
        };
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = {
            "A3_Supplies_F_Orange_Ammoboxes"
        };
        author = "FullMetalShep";
        version = 1;
    };
};

class CfgVehicles
{
    class C_IDAP_supplyCrate_F;

    class _44th_KitCrate_RBN : C_IDAP_supplyCrate_F
    {
        displayName = "44 RBN Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_KitCrates\kit_crates\fn_kitCrate_RBN.sqf'";
        };
    };

    class _44th_KitCrate_RBNSUP : C_IDAP_supplyCrate_F
    {
        displayName = "44 RBN Support Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_KitCrates\kit_crates\fn_kitCrate_RBNSUP.sqf'";
        };
    };

    class _44th_KitCrate_RANGER : C_IDAP_supplyCrate_F
    {
        displayName = "44 RANGER Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_KitCrates\kit_crates\fn_kitCrate_RANGER.sqf'";
        };
    };

    class _44th_KitCrate_SFSG : C_IDAP_supplyCrate_F
    {
        displayName = "44 SFSG Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_KitCrates\kit_crates\fn_kitCrate_SFSG.sqf'";
        };
    };

    class _44th_KitCrate_SRR : C_IDAP_supplyCrate_F
    {
        displayName = "44 SRR Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_KitCrates\kit_crates\fn_kitCrate_SRR.sqf'";
        };
    };

    class _44th_KitCrate_SAS : C_IDAP_supplyCrate_F
    {
        displayName = "44 SAS Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
        class EventHandlers
        {
            init = "(_this select 0) execVM '\44th_KitCrates\kit_crates\fn_kitCrate_SAS.sqf'";
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
    class FTH_Sub_KitCrates { displayName = "Kit Crates"; };
};
