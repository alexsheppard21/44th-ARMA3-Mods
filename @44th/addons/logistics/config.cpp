class CfgPatches
{
    class Logistics_44th
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
        class Logistics
        {
            file = "\44th_Logistics\logistics";
            // Crate addons call this at preInit to add their categories to the
            // shared catalogue. Nothing is hard-coded here, so the engine works
            // on any modlist with whichever crate addons happen to be loaded.
            class logisticsRegister {};
            // Server: crate-spawn event handler. Client: builds the ACE
            // "Request Supplies" menu once every addon has registered.
            class logisticsInit { postInit = 1; };
            // Builds the ACE action tree on a class or a single object.
            class logisticsActions {};
            // Promotes any runtime object into a logistics point.
            class registerLogisticsPoint {};
            // Server-side crate creation.
            class spawnSupplyCrate {};
        };
    };
};

// Shared by every 44th addon that places things in Eden. Declared here too so
// the logistics point categories resolve even if only one crate addon loads.
class CfgEditorCategories
{
    class FTH_Cat_44thMods
    {
        displayName = "44th Mods";
    };
};

class CfgEditorSubcategories
{
    class FTH_Sub_Logistics { displayName = "Logistics"; };
};
