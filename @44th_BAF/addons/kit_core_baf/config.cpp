class CfgPatches
{
    class KitCore_BAF_44th
    {
        units[] = {};
        weapons[] = {};
        requiredVersion = 0.1;
        // Deliberately does NOT require UK3CB - the faction-availability gate
        // in fn_initFactionsBAF.sqf lets this addon load on any modlist and
        // simply register nothing if 3CB isn't present, exactly like Kit Core
        // itself never requires TKE/OPTRE. Only the addons that actually place
        // 3CB-classed content (ORBAT BAF, Supply Crates BAF) hard-require it.
        requiredAddons[] = { "cba_xeh", "KitCore_44th" };
        author = "FullMetalShep";
        version = 1;
    };
};

class CfgFunctions
{
    class FTH
    {
        class KitCoreBAF
        {
            file = "\44th_KitCore_BAF\kit_core_baf";
            // Registers the BAF half of the roster (RBN, RBN Support, RANGER,
            // SFSG, SRR, SAS) into the shared FTH_Kits/FTH_RoleForClass maps
            // that Kit Core owns. Runs after Kit Core's own preInit, which is
            // guaranteed by this addon's requiredAddons above.
            class initFactionsBAF { preInit = 1; };
        };
    };
};
