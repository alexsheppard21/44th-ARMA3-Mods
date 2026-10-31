class CfgPatches
{
    class Supply_Crates_CW_44th
    {
        units[] = {
            "_44th_Crate_Rifles_CW",
            "_44th_Crate_LMG_CW",
            "_44th_Crate_GPMG_CW",
            "_44th_Crate_Launchers_CW",
            "_44th_Crate_Mortar_CW",
            "_44th_Crate_Sidearms_CW",
            "_44th_Crate_RifleAmmo_CW",
            "_44th_Crate_LMGAmmo_CW",
            "_44th_Crate_GPMGAmmo_CW",
            "_44th_Crate_CarlGustavAmmo_CW",
            "_44th_Crate_MortarAmmo_CW",
            "_44th_Crate_SidearmAmmo_CW",
            "_44th_Crate_Grenades_CW",
            "_44th_Crate_MedicalBasic_CW",
            "_44th_Crate_MedicalAdvanced_CW",
            "_44th_Crate_Engineer_CW",
            "_44th_Crate_Command_CW",
            "_44th_Crate_Equipment_CW",
            "_44th_Crate_FlarePistols_CW",
            "_44th_LogisticsPoint_CW"
        };
        weapons[] = {};
        requiredVersion = 0.1;
        // Hard-requires its modpack: on a modlist without it, skip this addon
        // quietly instead of raising a missing-addon warning and loading broken.
        skipWhenMissingDependencies = 1;
        // The crates inherit from CWR3 and ACE models, so those are hard
        // dependencies. Spearpoint is listed too: nothing inherits from it, but
        // every weapon in these crates comes from it, and requiring it keeps this
        // entry off a modlist where the contents would not exist.
        requiredAddons[] = {
            "cba_xeh",
            "Logistics_44th",
            "cwr3_crates",
            "ace_medical_treatment",
            "ace_cargo",
            "A3_Supplies_F_Heli_Slingload",
            "SP_Weapons",
            "CUP_Weapons_Flaregun"
        };
        author = "FullMetalShep";
        version = 6;
    };
};

class CfgFunctions
{
    class FTH
    {
        class SupplyCratesCW
        {
            file = "\44th_SupplyCratesCW\supply_crates_cw";
            // Hands this addon's crate catalogue to the shared logistics
            // engine in @44th.
            class registerCratesCW { preInit = 1; };
            // Fills any crate below from one contents table, keyed by class.
            class fillCrateCW {};
        };
    };
};

// Every crate is the same apart from class, model and name. The CWR3 and ACE
// crates come stocked, so the empty Transport* classes strip that before the
// fill runs and the crate only ever holds what the contents table gives it.
#define FTH_CRATE(CLS,BASE,NAME) \
    class CLS : BASE \
    { \
        scope = 2; \
        scopeCurator = 2; \
        displayName = NAME; \
        author = "FullMetalShep"; \
        editorCategory = "FTH_Cat_44thMods"; \
        editorSubcategory = "FTH_Sub_SupplyCrates"; \
        class TransportWeapons {}; \
        class TransportMagazines {}; \
        class TransportItems {}; \
        class TransportBackpacks {}; \
    };

// Fill runs server-side only (guarded inside the function).
#define FTH_FILL(CLS) \
    class CLS { class _44th_supplycrates_cw { init = "(_this select 0) spawn FTH_fnc_fillCrateCW"; }; };

class CfgVehicles
{
    // CWR3 crates (cwr3_crates), all ReammoBox_F so ACE drag/carry/cargo capable.
    // They only come in US/RU/FIA markings; the US boxes are the plain olive ones.
    // Medical is on the ACE crate, CWR3 has no medical box.
    // Contents: fn_fillCrateCW.sqf.
    class cwr3_crate_basicweapons_us;
    class cwr3_crate_launchers_us;
    class cwr3_crate_basicammo_us;
    class cwr3_crate_grenades_us;
    class cwr3_crate_explosives_us;
    class cwr3_crate_support_us;
    class ACE_medicalSupplyCrate;
    class B_Slingload_01_Ammo_F;

    // --- LOGISTICS POINT ---
    // The Cold War twin of _44th_LogisticsPoint. Players ACE-interact with it to
    // have any crate below spawned beside it. Also works on any object flagged
    // in its Eden init field with
    //   this setVariable ["FTH_logisticsPoint", true, true];
    // On the vanilla ammo slingload container so a helicopter can move it. ACE
    // makes that container loadable as cargo (size 50), so both are overridden
    // here: the point only ever moves by sling.
    class _44th_LogisticsPoint_CW : B_Slingload_01_Ammo_F
    {
        scope = 2;
        scopeCurator = 2;
        displayName = "44th Logistics Point (Cold War)";
        author = "FullMetalShep";
        editorCategory = "FTH_Cat_44thMods";
        editorSubcategory = "FTH_Sub_Logistics";
        ace_cargo_canLoad = 0;
        ace_cargo_size = -1;
        class TransportWeapons {};
        class TransportMagazines {};
        class TransportItems {};
        class TransportBackpacks {};
    };

    // --- WEAPONS - kit builds with attachments, no magazines ---
    FTH_CRATE(_44th_Crate_Rifles_CW, cwr3_crate_basicweapons_us, "44 CW Weapons - Rifles (SLR)")
    FTH_CRATE(_44th_Crate_LMG_CW, cwr3_crate_basicweapons_us, "44 CW Weapons - LMG (L4)")
    FTH_CRATE(_44th_Crate_GPMG_CW, cwr3_crate_basicweapons_us, "44 CW Weapons - GPMG (L7)")
    FTH_CRATE(_44th_Crate_Launchers_CW, cwr3_crate_launchers_us, "44 CW Weapons - Launchers")
    FTH_CRATE(_44th_Crate_Mortar_CW, cwr3_crate_launchers_us, "44 CW Weapons - 2 Inch Mortar")
    FTH_CRATE(_44th_Crate_Sidearms_CW, cwr3_crate_basicweapons_us, "44 CW Weapons - Sidearms")

    // --- AMMUNITION ---
    FTH_CRATE(_44th_Crate_RifleAmmo_CW, cwr3_crate_basicammo_us, "44 CW Ammo - Rifle")
    FTH_CRATE(_44th_Crate_LMGAmmo_CW, cwr3_crate_basicammo_us, "44 CW Ammo - LMG")
    FTH_CRATE(_44th_Crate_GPMGAmmo_CW, cwr3_crate_basicammo_us, "44 CW Ammo - GPMG")
    FTH_CRATE(_44th_Crate_CarlGustavAmmo_CW, cwr3_crate_basicammo_us, "44 CW Ammo - Carl Gustav")
    FTH_CRATE(_44th_Crate_MortarAmmo_CW, cwr3_crate_basicammo_us, "44 CW Ammo - 2 Inch Mortar")
    FTH_CRATE(_44th_Crate_SidearmAmmo_CW, cwr3_crate_basicammo_us, "44 CW Ammo - Sidearm")
    FTH_CRATE(_44th_Crate_Grenades_CW, cwr3_crate_grenades_us, "44 CW Ammo - Grenades & Signals")

    // --- MEDICAL ---
    FTH_CRATE(_44th_Crate_MedicalBasic_CW, ACE_medicalSupplyCrate, "44 CW Medical - Basic")
    FTH_CRATE(_44th_Crate_MedicalAdvanced_CW, ACE_medicalSupplyCrate, "44 CW Medical - Advanced (Medic)")

    // --- SPECIALIST ---
    FTH_CRATE(_44th_Crate_Engineer_CW, cwr3_crate_explosives_us, "44 CW Specialist - Engineer")
    FTH_CRATE(_44th_Crate_Command_CW, cwr3_crate_support_us, "44 CW Specialist - Command (Bulldog)")
    FTH_CRATE(_44th_Crate_Equipment_CW, cwr3_crate_support_us, "44 CW Specialist - Equipment")
    FTH_CRATE(_44th_Crate_FlarePistols_CW, cwr3_crate_support_us, "44 CW Specialist - Flare Pistols")
};

class Extended_InitPost_EventHandlers
{
    FTH_FILL(_44th_Crate_Rifles_CW)
    FTH_FILL(_44th_Crate_LMG_CW)
    FTH_FILL(_44th_Crate_GPMG_CW)
    FTH_FILL(_44th_Crate_Launchers_CW)
    FTH_FILL(_44th_Crate_Mortar_CW)
    FTH_FILL(_44th_Crate_Sidearms_CW)
    FTH_FILL(_44th_Crate_RifleAmmo_CW)
    FTH_FILL(_44th_Crate_LMGAmmo_CW)
    FTH_FILL(_44th_Crate_GPMGAmmo_CW)
    FTH_FILL(_44th_Crate_CarlGustavAmmo_CW)
    FTH_FILL(_44th_Crate_MortarAmmo_CW)
    FTH_FILL(_44th_Crate_SidearmAmmo_CW)
    FTH_FILL(_44th_Crate_Grenades_CW)
    FTH_FILL(_44th_Crate_MedicalBasic_CW)
    FTH_FILL(_44th_Crate_MedicalAdvanced_CW)
    FTH_FILL(_44th_Crate_Engineer_CW)
    FTH_FILL(_44th_Crate_Command_CW)
    FTH_FILL(_44th_Crate_Equipment_CW)
    FTH_FILL(_44th_Crate_FlarePistols_CW)
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
