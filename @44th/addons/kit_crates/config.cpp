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
            "_44th_KitCrate_SAS",
            "_44th_KitCrate_UCNMC",
            "_44th_KitCrate_CWRM",
            "_44th_KitCrate_CWPARA",
            "_44th_KitCrate_CWMECH",
            "_44th_KitCrate_CWCREW",
            "_44th_KitCrate_MASTER"
        };
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = {
            "A3_Supplies_F_Orange_Ammoboxes", "cba_xeh", "KitCore_44th"
        };
        author = "FullMetalShep";
        version = 32;
    };
};

class CfgFunctions
{
    class FTH
    {
        class KitCrates
        {
            file = "\44th_KitCrates\kit_crates";
            // Client-side: on first spawn, auto-opens the WBK Kits kit menu on a
            // box scoped to the player's faction (see fn_spawnKitMenu.sqf).
            class spawnKitMenu { postInit = 1; };
        };
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
    };

    class _44th_KitCrate_RBNSUP : C_IDAP_supplyCrate_F
    {
        displayName = "44 RBN Support Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };

    class _44th_KitCrate_RANGER : C_IDAP_supplyCrate_F
    {
        displayName = "44 RANGER Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };

    class _44th_KitCrate_SFSG : C_IDAP_supplyCrate_F
    {
        displayName = "44 SFSG Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };

    class _44th_KitCrate_SRR : C_IDAP_supplyCrate_F
    {
        displayName = "44 SRR Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };

    class _44th_KitCrate_SAS : C_IDAP_supplyCrate_F
    {
        displayName = "44 SAS Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };

    // SciFi modpack (The Kuiper Engagements) - 44th Detachment, UCN Marine
    // Corp. Vanilla box like the rest: this addon loads on any modlist, so it
    // cannot inherit from an OPTRE or TKE class. The kits inside only register
    // when TKE is present (see FTH_FactionAvailable in fn_initKits.sqf), so on
    // a BAF night this crate is simply empty.
    class _44th_KitCrate_UCNMC : C_IDAP_supplyCrate_F
    {
        displayName = "44 UCNMC Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };

    // Cold War modlist. Same deal: vanilla boxes, empty unless Kit Core CW has
    // registered its kits. The crews get their own crate because all three
    // companies share them.
    class _44th_KitCrate_CWRM : C_IDAP_supplyCrate_F
    {
        displayName = "44 CW Royal Marines Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };

    class _44th_KitCrate_CWPARA : C_IDAP_supplyCrate_F
    {
        displayName = "44 CW 2 Para Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };

    class _44th_KitCrate_CWMECH : C_IDAP_supplyCrate_F
    {
        displayName = "44 CW Mech Infantry Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };

    class _44th_KitCrate_CWCREW : C_IDAP_supplyCrate_F
    {
        displayName = "44 CW Aircrew & Armour Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };

    // Retired shared master crate: each modpack's ORBAT addon now ships its own
    // (_44th_KitCrate_MASTER_BAF / _SCIFI / _CW). Hidden from the editor rather
    // than deleted, so missions that already placed one still load.
    class _44th_KitCrate_MASTER : C_IDAP_supplyCrate_F
    {
        scope = 1;
        scopeCurator = 0;
        displayName = "44th Master Kit Crate";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_KitCrates";
    };
};

class Extended_InitPost_EventHandlers
{
    class _44th_KitCrate_RBN    { class _44th_kitcrates { init = "[(_this select 0), 'RBN']    execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
    class _44th_KitCrate_RBNSUP { class _44th_kitcrates { init = "[(_this select 0), 'RBNSUP'] execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
    class _44th_KitCrate_RANGER { class _44th_kitcrates { init = "[(_this select 0), 'RANGER'] execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
    class _44th_KitCrate_SFSG   { class _44th_kitcrates { init = "[(_this select 0), 'SFSG']   execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
    class _44th_KitCrate_SRR    { class _44th_kitcrates { init = "[(_this select 0), 'SRR']    execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
    class _44th_KitCrate_SAS    { class _44th_kitcrates { init = "[(_this select 0), 'SAS']    execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
    class _44th_KitCrate_UCNMC  { class _44th_kitcrates { init = "[(_this select 0), 'UCNMC']  execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
    class _44th_KitCrate_CWRM   { class _44th_kitcrates { init = "[(_this select 0), 'CWRM']   execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
    class _44th_KitCrate_CWPARA { class _44th_kitcrates { init = "[(_this select 0), 'CWPARA'] execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
    class _44th_KitCrate_CWMECH { class _44th_kitcrates { init = "[(_this select 0), 'CWMECH'] execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
    class _44th_KitCrate_CWCREW { class _44th_kitcrates { init = "[(_this select 0), 'CWCREW'] execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
    class _44th_KitCrate_MASTER { class _44th_kitcrates { init = "[(_this select 0), 'MASTER'] execVM '\44th_KitCrates\kit_crates\fn_fillCrate.sqf'"; }; };
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
