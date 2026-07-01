class CfgPatches
{
    class KitCore_44th
    {
        units[] = {};
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = { "cba_xeh" };
        author = "FullMetalShep";
        version = 1;
    };
};

class CfgFunctions
{
    class FTH
    {
        class KitCore
        {
            file = "44th_KitCore\kit_core";
            // Builds the shared loadout library (FTH_Kits) and the ORBAT
            // class -> role-key map (FTH_RoleForClass) before anything spawns.
            class initKits { preInit = 1; };
            // Applies a role's loadout to a unit. Called by the composition's
            // per-unit FTH_kit attribute and by the respawn hook.
            class applyKit {};
            // Re-applies the player's kit on respawn (client-side).
            class kitRespawn { postInit = 1; };
            // Hard kit-version handshake between server and clients.
            class versionControl { postInit = 1; };
        };
    };
};
