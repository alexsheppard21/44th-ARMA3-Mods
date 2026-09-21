# 44th Logistics

The shared logistics engine behind the **Logistics Point** in every 44th supply
crate addon. Ships no crates and no editor objects of its own — it is the menu,
the crate-spawning and the point registration, and nothing else.

It lives in `@44th` (the modpack-agnostic entry) so that a modlist carrying only
the BAF crates, only the SciFi crates, or both, gets working logistics points
either way. Nothing here inherits from a modpack class.

## How a crate addon plugs in

Each crate addon registers its own categories at **preInit**:

```sqf
["UCNMC", "UCNMC", ["_44th_Crate_Section_UCNMC", ...], "_44th_LogisticsPoint_UCNMC"]
    call FTH_fnc_logisticsRegister;
```

At **postInit** this addon builds the ACE action tree from whatever registered.
preInit always runs first, so addon load order does not matter. Categories are
merged by id, so two addons can contribute crates to one heading.

## Functions

| Function | Runs | Does |
|---|---|---|
| `FTH_fnc_logisticsRegister` | called at preInit | adds a category (and optionally a point class) to the catalogue |
| `FTH_fnc_logisticsInit` | postInit | server: crate-spawn handler. client: builds the ACE menu |
| `FTH_fnc_logisticsActions` | called | builds the action tree on a class or a single object |
| `FTH_fnc_registerLogisticsPoint` | called | promotes any runtime object into a logistics point |
| `FTH_fnc_spawnSupplyCrate` | server | creates the requested crate beside the point |

Requests are validated server-side against the catalogue, so a client cannot ask
for a class the framework does not ship.

**Requires:** CBA_A3. ACE is optional — without it the point is just a prop.
