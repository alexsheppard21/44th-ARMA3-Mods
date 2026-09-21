class CfgPatches
{
    class _44th_ORBAT_SciFi
    {
        // The composition places vanilla soldier objects and kits them from Kit
        // Core, so this addon defines no units of its own.
        units[] = {};
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = {
            "A3_Characters_F",
            "cba_xeh",
            "KitCore_44th",
            "Logistics_44th",
            "TKE_Unit_Groups",
            "OPTRE_Vehicles_Warthog"
        };
        author = "FullMetalShep";
        version = 1;
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

class Cfg3DEN
{
    class Compositions
    {
        class _44th_Comp_ORBAT_SciFi
        {
            path = "44th_ORBAT_SciFi\orbat_scifi\compositions\orbat";
            side = 1;
            editorCategory = "FTH_Cat_44thMods";
            editorSubcategory = "FTH_Sub_44th_Compositions";
            displayName = "44th Sci-Fi ORBAT";
            icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa";
            useSideColorOnIcon = 1;
        };
    };
};

