Config = {

  -- Glossary:
  -- POI = Point of interest

  -- Toggle debug messages on and off.
  Debug = false,

  -- You can change the command in case of conflicts or other preferences.
  Commands = {
    navSet = "navset",
    navTo = "navto",
    navClear = "navClear",
  },

  -- Create predetermined POIs
  Locations = {
    {"PD", vector3(408.55, -980.24, 28.84)},
    {"EMS", vector3(292.86, -583.17, 42.76)}
  }
}
