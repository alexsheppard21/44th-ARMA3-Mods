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
        version = 4;
    };
};

// The CWR3 beret with the 44th cap badge. Its colour and badge are separate
// textures, so every version shares one badge. All but sand and khaki use
// CWR3's own colours; CWR3 has no sand or khaki, so those two ship here.
#define FTH_BERET(CLS,NAME,TEXTURE) \
    class CLS : cwr3_b_uk_headgear_beret_infantry \
    { \
        displayName = NAME; \
        author = "FullMetalShep"; \
        hiddenSelectionsTextures[] = { TEXTURE, "\44th_Berets_CW\berets_cw\data\44th_beret_badge_ca.paa" }; \
    };

class CfgWeapons
{
    class cwr3_b_uk_headgear_beret_infantry;

    FTH_BERET(_44th_Beret_Sand_CW, "44th Beret (SF)", "\44th_Berets_CW\berets_cw\data\44th_beret_sand_co.paa")
    FTH_BERET(_44th_Beret_Maroon_CW, "44th Beret (Paratrooper)", "\cwr3\humans\cwr3_soldiers_fia\headgear\data\cwr3_fia_beret_02_maroon_co.paa")
    FTH_BERET(_44th_Beret_Green_CW, "44th Beret (Light Inf)", "\cwr3\humans\cwr3_soldiers_fia\headgear\data\cwr3_fia_beret_02_green_co.paa")
    FTH_BERET(_44th_Beret_Black_CW, "44th Beret (Armoured)", "\cwr3\humans\cwr3_soldiers_fia\headgear\data\cwr3_fia_beret_02_black_co.paa")
    FTH_BERET(_44th_Beret_Blue_CW, "44th Beret (Support)", "\cwr3\humans\cwr3_soldiers_fia\headgear\data\cwr3_fia_beret_02_darkblue_co.paa")
    FTH_BERET(_44th_Beret_Khaki_CW, "44th Beret (Infantry)", "\44th_Berets_CW\berets_cw\data\44th_beret_khaki_co.paa")
    FTH_BERET(_44th_Beret_SeaGreen_CW, "44th Beret (Commando)", "\cwr3\humans\cwr3_soldiers_fia\headgear\data\cwr3_fia_beret_02_seagreen_co.paa")
};
