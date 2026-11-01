class CfgPatches
{
    class Berets_CW_44th
    {
        units[] = {};
        weapons[] = {
            "_44th_Beret_Sand_CW",
            "_44th_Beret_Maroon_CW",
            "_44th_Beret_Green_CW",
            "_44th_Beret_Black_CW",
            "_44th_Beret_Blue_CW",
            "_44th_Beret_Khaki_CW",
            "_44th_Beret_SeaGreen_CW"
        };
        requiredVersion = 0.1;
        // Hard-requires its modpack: on a modlist without it, skip this addon
        // quietly instead of raising a missing-addon warning and loading broken.
        skipWhenMissingDependencies = 1;
        requiredAddons[] = { "cwr3_expansion_uk" };
        author = "FullMetalShep";
        version = 5;
    };
};

// One TRF beret model with the 44th cap badge baked into each colour texture,
// so a colour is only a texture swap on the model's camo selection.
#define FTH_BERET(CLS,NAME,TEXTURE) \
    class CLS : cwr3_b_uk_headgear_beret_infantry \
    { \
        displayName = NAME; \
        author = "FullMetalShep"; \
        model = "\44th_Berets_CW\berets_cw\beret.p3d"; \
        hiddenSelections[] = { "camo" }; \
        hiddenSelectionsTextures[] = { TEXTURE }; \
        hiddenSelectionsMaterials[] = {}; \
        class ItemInfo : ItemInfo \
        { \
            uniformModel = "\44th_Berets_CW\berets_cw\beret.p3d"; \
            hiddenSelections[] = { "camo" }; \
        }; \
    };

class CfgWeapons
{
    class cwr3_i_headgear_beret_02_base;
    class cwr3_b_uk_headgear_beret_infantry : cwr3_i_headgear_beret_02_base
    {
        class ItemInfo;
    };

    FTH_BERET(_44th_Beret_Sand_CW, "44th Beret (SF)", "\44th_Berets_CW\berets_cw\data\44th_beret_sand_co.paa")
    FTH_BERET(_44th_Beret_Maroon_CW, "44th Beret (Paratrooper)", "\44th_Berets_CW\berets_cw\data\44th_beret_maroon_co.paa")
    FTH_BERET(_44th_Beret_Green_CW, "44th Beret (Light Inf)", "\44th_Berets_CW\berets_cw\data\44th_beret_green_co.paa")
    FTH_BERET(_44th_Beret_Black_CW, "44th Beret (Armoured)", "\44th_Berets_CW\berets_cw\data\44th_beret_black_co.paa")
    FTH_BERET(_44th_Beret_Blue_CW, "44th Beret (Support)", "\44th_Berets_CW\berets_cw\data\44th_beret_blue_co.paa")
    FTH_BERET(_44th_Beret_Khaki_CW, "44th Beret (Infantry)", "\44th_Berets_CW\berets_cw\data\44th_beret_khaki_co.paa")
    FTH_BERET(_44th_Beret_SeaGreen_CW, "44th Beret (Commando)", "\44th_Berets_CW\berets_cw\data\44th_beret_seagreen_co.paa")
};
