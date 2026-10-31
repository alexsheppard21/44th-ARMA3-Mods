class CfgPatches
{
    class _44th_ORBAT_CW
    {
        // The composition places vanilla soldier objects and kits them from Kit
        // Core, so this addon's only object is its master kit crate.
        units[] = { "_44th_KitCrate_MASTER_CW" };
        weapons[] = {};
        requiredVersion = 0.1;
        // Hard-requires its modpack: on a modlist without it, skip this addon
        // quietly instead of raising a missing-addon warning and loading broken.
        skipWhenMissingDependencies = 1;
        requiredAddons[] = {
            "A3_Characters_F",
            "cba_xeh",
            "KitCore_44th",
            "KitCrates_44th",
            "KitCore_CW_44th",
            "Logistics_44th",
            "Supply_Crates_CW_44th",
            "SP_Uniforms",
            "cwr3_expansion_uk"
        };
        author = "FullMetalShep";
        version = 2;
    };
};

class CfgEditorCategories
{
    class FTH_Cat_44thMods { displayName = "44th Mods"; };
};

class CfgEditorSubcategories
{
    class FTH_Sub_44th_Compositions { displayName = "Compositions"; };
};

class CfgVehicles
{
    class C_IDAP_supplyCrate_F;

    // Master crate: holds every Cold War kit, but each player only sees the kit
    // for their own ORBAT role. Vanilla box like the rest of the kit crates.
    class _44th_KitCrate_MASTER_CW : C_IDAP_supplyCrate_F
    {
        displayName = "44th Master Kit Crate (Cold War)";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };
};

class Extended_InitPost_EventHandlers
{
    class _44th_KitCrate_MASTER_CW { class _44th_kitcrates { init = "[(_this select 0), 'MASTER', ['CWRM','CWPARA','CWMECH','CWCREW']] execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
};

class Cfg3DEN
{
    class Compositions
    {
        class _44th_Comp_ORBAT_CW
        {
            path = "44th_ORBAT_CW\orbat_cw\compositions\orbat";
            side = 1;
            editorCategory = "FTH_Cat_44thMods";
            editorSubcategory = "FTH_Sub_44th_Compositions";
            displayName = "44th Cold War ORBAT";
            icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa";
            useSideColorOnIcon = 1;
        };
    };
};
