class CfgPatches
{
    class KitCore_CW_44th
    {
        units[] = {};
        weapons[] = {};
        requiredVersion = 0.1;
        // Deliberately does NOT require Spearpoint/CWR3 - the faction-availability
        // gate in fn_initFactionsCW.sqf lets this addon load on any modlist and
        // simply register nothing if they aren't present, exactly like Kit Core
        // itself never requires 3CB. Only the addons that actually place
        // Cold War-classed content (ORBAT CW, Supply Crates CW) hard-require them.
        requiredAddons[] = { "cba_xeh", "KitCore_44th" };
        author = "FullMetalShep";
        version = 1;
    };
};

class CfgFunctions
{
    class FTH
    {
        class KitCoreCW
        {
            file = "\44th_KitCore_CW\kit_core_cw";
            // Registers the Cold War half of the roster (Royal Marines, 2 Para,
            // Mechanised Infantry, aircrew and armour crews) into the shared
            // FTH_Kits map that Kit Core owns. Runs after Kit Core's own preInit,
            // which is guaranteed by this addon's requiredAddons above.
            class initFactionsCW { preInit = 1; };
        };
    };
};
