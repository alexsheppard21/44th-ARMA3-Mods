class CfgPatches
{
    class KitCore_SciFi_44th
    {
        units[] = {};
        weapons[] = {};
        requiredVersion = 0.1;
        // Deliberately does NOT require TKE/OPTRE - the faction-availability
        // gate in fn_initFactionsSciFi.sqf lets this addon load on any
        // modlist and simply register nothing if they aren't present, exactly
        // like Kit Core itself never requires 3CB. Only the addons that
        // actually place TKE/OPTRE-classed content (ORBAT SciFi, Supply
        // Crates SciFi) hard-require them.
        requiredAddons[] = { "cba_xeh", "KitCore_44th" };
        author = "FullMetalShep";
        version = 1;
    };
};

class CfgFunctions
{
    class FTH
    {
        class KitCoreSciFi
        {
            file = "\44th_KitCore_SciFi\kit_core_scifi";
            // Registers the SciFi half of the roster (UCNMC - UCN Marine
            // Corp, The Kuiper Engagements) into the shared FTH_Kits map that
            // Kit Core owns. Runs after Kit Core's own preInit, which is
            // guaranteed by this addon's requiredAddons above.
            class initFactionsSciFi { preInit = 1; };
        };
    };
};
