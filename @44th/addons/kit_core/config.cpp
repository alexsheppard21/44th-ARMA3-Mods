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
            file = "\44th_KitCore\kit_core";
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

// Registering FTH_kit here is what makes Eden actually run the expression for
// units placed by an ORBAT composition. It lives in Kit Core rather than in an
// ORBAT addon so that every ORBAT - BAF or SciFi - gets it from the one place
// they all already depend on.
class Cfg3DEN
{
    class Object
    {
        class AttributeCategories
        {
            class FTH_44th
            {
                displayName = "44th Kit";
                collapsed = 0;
                class Attributes
                {
                    // Role key from Kit Core (e.g. "RBN_PlatoonCommander" or
                    // "UCNMC_LanceLead"). On mission start this applies the
                    // shared loadout and tags the unit with FTH_roleKey (used
                    // by the master kit crate and the respawn hook).
                    class FTH_kit
                    {
                        property = "FTH_kit";
                        control = "Edit";
                        displayName = "44th Role Kit";
                        tooltip = "Kit Core role key, e.g. RBN_PlatoonCommander. Leave blank for no kit.";
                        expression = "if (_value isEqualType '' && {_value != ''}) then {[_this,_value] call FTH_fnc_applyKit;};";
                        defaultValue = "''";
                        typeName = "STRING";
                        validate = "none";
                    };
                };
            };
        };
    };
};
