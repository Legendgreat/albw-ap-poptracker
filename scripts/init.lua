--- ALBW Randomizer Tracker Init

--- Logic
require("scripts/logic_import")

--- Items
require("scripts/items_import")

--- Maps
Tracker:AddMaps("maps.json")
Tracker:AddMaps("floors.json")

--- Layouts
require("scripts/layouts_import")

--- Locations
require("scripts/locations_import")

ScriptHost:LoadScript("scripts/autotracking.lua")