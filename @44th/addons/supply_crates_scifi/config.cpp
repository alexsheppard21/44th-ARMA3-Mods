class CfgPatches
{
    class Supply_Crates_SciFi_44th
    {
        units[] = {
            "_44th_Crate_Medical_UCNMC",
            "_44th_Crate_Section_UCNMC",
            "_44th_Crate_FireSupport_UCNMC",
            "_44th_Crate_Precision_UCNMC",
            "_44th_Crate_AntiArmour_UCNMC",
            "_44th_Crate_Command_UCNMC",
            "_44th_LogisticsPoint_UCNMC"
        };
        weapons[] = {};
        requiredVersion = 0.1;
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
        version = 1;
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
        };
    };
};

class CfgVehicles
{
    // OPTRE bases. The weapon crates are House_F derived (big, animated lid);
    // the ammo racks are ReammoBox_F derived. Both hold cargo.
    class OPTRE_Weapon_Crate_Marines_S;
    class OPTRE_Weapon_Crate_Marines_HW;
    class OPTRE_Weapon_Crate_Marines_LR;
    class OPTRE_Ammo_Rack_Weapons;
    class OPTRE_Ammo_Rack_Ammo;
    class Land_shipping_crate_lg_locked;

    // --- LOGISTICS POINT ---
    // The SciFi twin of _44th_LogisticsPoint. Players ACE-interact with it to
    // have any crate below spawned beside it. Also works on any object flagged
    // in its Eden init field with
    //   this setVariable ["FTH_logisticsPoint", true, true];
    class _44th_LogisticsPoint_UCNMC : Land_shipping_crate_lg_locked
    {
        scope = 2;
        scopeCurator = 2;
        displayName = "44th Logistics Point (UCNMC)";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_Logistics";
    };

    // --- MEDICAL ---
    class _44th_Crate_Medical_UCNMC : OPTRE_Ammo_Rack_Ammo
    {
        scope = 2;
        scopeCurator = 2;
        displayName = "44th UCNMC Medical Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    // --- SECTION ---
    class _44th_Crate_Section_UCNMC : OPTRE_Weapon_Crate_Marines_S
    {
        scope = 2;
        scopeCurator = 2;
        displayName = "44 UCNMC 8-Man Section Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    // --- SPECIALIST ---
    class _44th_Crate_FireSupport_UCNMC : OPTRE_Weapon_Crate_Marines_HW
    {
        scope = 2;
        scopeCurator = 2;
        displayName = "44 UCNMC Fire Support Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    class _44th_Crate_AntiArmour_UCNMC : OPTRE_Weapon_Crate_Marines_HW
    {
        scope = 2;
        scopeCurator = 2;
        displayName = "44 UCNMC Anti-Armour Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    class _44th_Crate_Precision_UCNMC : OPTRE_Weapon_Crate_Marines_LR
    {
        scope = 2;
        scopeCurator = 2;
        displayName = "44 UCNMC Precision Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };

    // --- COMMAND (Bulldog) ---
    class _44th_Crate_Command_UCNMC : OPTRE_Ammo_Rack_Weapons
    {
        scope = 2;
        scopeCurator = 2;
        displayName = "44 UCNMC Command (Bulldog) Supplies";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_SupplyCrates";
    };
};

class Extended_InitPost_EventHandlers
{
    class _44th_Crate_Medical_UCNMC     { class _44th_supplycrates_scifi { init = "(_this select 0) execVM '\44th_SupplyCratesSciFi\supply_crates_scifi\fn_fillCrate_Medical_UCNMC.sqf'"; }; };
    class _44th_Crate_Section_UCNMC     { class _44th_supplycrates_scifi { init = "(_this select 0) execVM '\44th_SupplyCratesSciFi\supply_crates_scifi\fn_fillCrate_Section_UCNMC.sqf'"; }; };
    class _44th_Crate_FireSupport_UCNMC { class _44th_supplycrates_scifi { init = "(_this select 0) execVM '\44th_SupplyCratesSciFi\supply_crates_scifi\fn_fillCrate_FireSupport_UCNMC.sqf'"; }; };
    class _44th_Crate_AntiArmour_UCNMC  { class _44th_supplycrates_scifi { init = "(_this select 0) execVM '\44th_SupplyCratesSciFi\supply_crates_scifi\fn_fillCrate_AntiArmour_UCNMC.sqf'"; }; };
    class _44th_Crate_Precision_UCNMC   { class _44th_supplycrates_scifi { init = "(_this select 0) execVM '\44th_SupplyCratesSciFi\supply_crates_scifi\fn_fillCrate_Precision_UCNMC.sqf'"; }; };
    class _44th_Crate_Command_UCNMC     { class _44th_supplycrates_scifi { init = "(_this select 0) execVM '\44th_SupplyCratesSciFi\supply_crates_scifi\fn_fillCrate_Command_UCNMC.sqf'"; }; };
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
