Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/settings.json")
Tracker:AddLayouts("layouts/dungeon_items.json")
Tracker:AddLayouts("layouts/weather_vane.json")

Tracker:AddLayouts("layouts/tabs.json")
Tracker:AddLayouts("layouts/dungeons.json")

Tracker:AddLayouts("layouts/broadcast.json")

if Tracker.ActiveVariantUID == "standard" then
  Tracker:AddLayouts("layouts/tracker.json")
else
  local var_uid = string.gsub(Tracker.ActiveVariantUID, "z+_", "")

  Tracker:AddLayouts(var_uid .. "/layouts/tracker.json")
end