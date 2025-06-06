ScriptHost:LoadScript("scripts/autotracking/item_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/location_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/setting_mapping.lua")

CUR_INDEX = -1
PLAYER_ID = -1
TEAM_NUMBER = 0

LOCAL_ITEMS = {}
GLOBAL_ITEMS = {}
HOSTED = {}

DEBUG_ON_CLEAR = false
DEBUG_ON_ITEM = false
DEBUG_ON_LOCATION = false
DEBUG_ON_SCOUT = false
DEBUG_ON_BOUNCE = false

function resetItems(mapping_table)
    for _, value in pairs(mapping_table) do
        if value[1] and value[2] then
            local object = Tracker:FindObjectForCode(value[1])
            if object then
                if value[2] == "toggle" then
                    object.Active = false
                elseif value[2] == "progressive" then
                    object.CurrentStage = 0
                    object.Active = false
                elseif value[2] == "consumable" then
                    object.AcquiredCount = 0
                elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
                    print(string.format("onClear: unknown item type %s for code %s", value[2], value[1]))
                end
                -- handle sword starting at index 1
                if value[1] == "p_sword" then
                    object.CurrentStage = 1
                end
            elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
                print(string.format("onClear: could not find object for code %s", value[1]))
            end
        end
    end
end

function resetLocations()
    for _, value in pairs(LOCATION_MAPPING) do
        if value[1] then
            if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
                print(string.format("onClear: clearing location %s", value[1]))
            end
            local object = Tracker:FindObjectForCode(value[1])
            if object then
                if value[1]:sub(1, 1) == "@" then
                    object.AvailableChestCount = object.ChestCount
                else
                    object.Active = false
                end
            elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
                print(string.format("onClear: could not find object for code %s", value[1]))
            end
        end
    end
end

-- from https://stackoverflow.com/questions/9168058/how-to-dump-a-table-to-console
-- dumps a table in a readable string
function dump_table(o, depth)
    if depth == nil then
        depth = 0
    end
    if type(o) == 'table' then
        local tabs = ('\t'):rep(depth)
        local tabs2 = ('\t'):rep(depth + 1)
        local s = '{\n'
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. tabs2 .. '[' .. k .. '] = ' .. dump_table(v, depth + 1) .. ',\n'
        end
        return s .. tabs .. '}'
    else
        return tostring(o)
    end
end


function onSetReply(key, value, old)
end

function toggleWeatherVanes(value)
    if value == 2 then -- Convinient
        Tracker:FindObjectForCode("wv_your_house").Active = true
        Tracker:FindObjectForCode("wv_kakariko").Active = true
        Tracker:FindObjectForCode("wv_witch").Active = true
        Tracker:FindObjectForCode("wv_sanctuary").Active = true
        Tracker:FindObjectForCode("wv_lorule_castle").Active = true
        Tracker:FindObjectForCode("wv_thieves").Active = true
        Tracker:FindObjectForCode("wv_blacksmith").Active = true
        Tracker:FindObjectForCode("wv_vacant_house").Active = true
    elseif value == 3 then -- Hyrule
        Tracker:FindObjectForCode("wv_your_house").Active = true
        Tracker:FindObjectForCode("wv_kakariko").Active = true
        Tracker:FindObjectForCode("wv_witch").Active = true
        Tracker:FindObjectForCode("wv_sanctuary").Active = true
        Tracker:FindObjectForCode("wv_eastern").Active = true
        Tracker:FindObjectForCode("wv_gales").Active = true
        Tracker:FindObjectForCode("wv_hera").Active = true
        Tracker:FindObjectForCode("wv_death_hyrule").Active = true
        Tracker:FindObjectForCode("wv_desert").Active = true
    elseif value == 4 then -- Lorule
        Tracker:FindObjectForCode("wv_lorule_castle").Active = true
        Tracker:FindObjectForCode("wv_thieves").Active = true
        Tracker:FindObjectForCode("wv_blacksmith").Active = true
        Tracker:FindObjectForCode("wv_vacant_house").Active = true
        Tracker:FindObjectForCode("wv_skull").Active = true
        Tracker:FindObjectForCode("wv_treacherous_tower").Active = true
        Tracker:FindObjectForCode("wv_ice").Active = true
        Tracker:FindObjectForCode("wv_graveyard").Active = true
        Tracker:FindObjectForCode("wv_dark").Active = true
        Tracker:FindObjectForCode("wv_mire").Active = true
        Tracker:FindObjectForCode("wv_swamp").Active = true
        Tracker:FindObjectForCode("wv_turtle").Active = true
        Tracker:FindObjectForCode("wv_death_lorule").Active = true
    elseif value == 5 then -- All
        Tracker:FindObjectForCode("wv_your_house").Active = true
        Tracker:FindObjectForCode("wv_kakariko").Active = true
        Tracker:FindObjectForCode("wv_witch").Active = true
        Tracker:FindObjectForCode("wv_sanctuary").Active = true
        Tracker:FindObjectForCode("wv_eastern").Active = true
        Tracker:FindObjectForCode("wv_gales").Active = true
        Tracker:FindObjectForCode("wv_hera").Active = true
        Tracker:FindObjectForCode("wv_death_hyrule").Active = true
        Tracker:FindObjectForCode("wv_desert").Active = true
        Tracker:FindObjectForCode("wv_lorule_castle").Active = true
        Tracker:FindObjectForCode("wv_thieves").Active = true
        Tracker:FindObjectForCode("wv_blacksmith").Active = true
        Tracker:FindObjectForCode("wv_vacant_house").Active = true
        Tracker:FindObjectForCode("wv_skull").Active = true
        Tracker:FindObjectForCode("wv_treacherous_tower").Active = true
        Tracker:FindObjectForCode("wv_ice").Active = true
        Tracker:FindObjectForCode("wv_graveyard").Active = true
        Tracker:FindObjectForCode("wv_dark").Active = true
        Tracker:FindObjectForCode("wv_mire").Active = true
        Tracker:FindObjectForCode("wv_swamp").Active = true
        Tracker:FindObjectForCode("wv_turtle").Active = true
        Tracker:FindObjectForCode("wv_death_lorule").Active = true
    end
end

function onClear(slot_data)
    PLAYER_NUMBER = Archipelago.PlayerNumber or -1
    TEAM_NUMBER = Archipelago.TeamNumber or 0
    CUR_INDEX = -1
    Tracker.BulkUpdate = true
    LOCAL_ITEMS = {}
    GLOBAL_ITEMS = {}
    resetItems(ITEM_MAPPING)
    resetLocations()
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
        print(string.format("called onClear, slot_data:\n%s", dump_table(slot_data)))
    end

    for key, value in pairs(slot_data) do
        if key == "swordless_mode" then
            if value == 1 then
                local object = Tracker:FindObjectForCode("p_sword")
                object.CurrentStage = 0
            end
        elseif key == "weather_vanes" then
            toggleWeatherVanes(value)
        end
        if SLOT_CODES[key] then
            Tracker:FindObjectForCode(SLOT_CODES[key].code).CurrentStage = SLOT_CODES[key].mapping[value]
        elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
            print(string.format("onClear: could not find setting for id %s", key))
        end
    end
    Tracker.BulkUpdate = false
end

-- called when an item gets collected
function onItem(index, item_id, item_name, player_number)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print(string.format("called onItem: %s, %s, %s, %s, %s", index, item_id, item_name, player_number, CUR_INDEX))
    end
    if not AUTOTRACKER_ENABLE_ITEM_TRACKING and DEBUG_ON_ITEM then
        return
    end
    if index <= CUR_INDEX then
        return
    end
    local is_local = player_number == Archipelago.PlayerNumber
    CUR_INDEX = index;
    local v = ITEM_MAPPING[item_id]
    if not v then
        if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
            print(string.format("onItem: could not find item mapping for id %s", item_id))
        end
        return
    end
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print(string.format("onItem: code: %s, type %s", v[1], v[2]))
    end
    if not v[1] then
        return
    end
    local obj = Tracker:FindObjectForCode(v[1])
    if obj then
        if v[2] == "toggle" then
            obj.Active = true
        elseif v[2] == "progressive" then
            if obj.Active then
                obj.CurrentStage = obj.CurrentStage + 1
            else
                obj.Active = true
            end
        elseif v[2] == "consumable" then
            obj.AcquiredCount = obj.AcquiredCount + obj.Increment
        elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
            print(string.format("onItem: unknown item type %s for code %s", v[2], v[1]))
        end
    elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print(string.format("onItem: could not find object for code %s", v[1]))
    end
    -- track local items via snes interface
    if is_local then
        if LOCAL_ITEMS[v[1]] then
            LOCAL_ITEMS[v[1]] = LOCAL_ITEMS[v[1]] + 1
        else
            LOCAL_ITEMS[v[1]] = 1
        end
    else
        if GLOBAL_ITEMS[v[1]] then
            GLOBAL_ITEMS[v[1]] = GLOBAL_ITEMS[v[1]] + 1
        else
            GLOBAL_ITEMS[v[1]] = 1
        end
    end
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print(string.format("local items: %s", dump_table(LOCAL_ITEMS)))
        print(string.format("global items: %s", dump_table(GLOBAL_ITEMS)))
    end
    can_finish()
end

-- called when a location gets cleared
function onLocation(location_id, location_name)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_LOCATION then
        print(string.format("called onLocation: %s, %s", location_id, location_name))
    end
    if not AUTOTRACKER_ENABLE_LOCATION_TRACKING then
        return
    end
    local v = LOCATION_MAPPING[location_id]
    if not v and AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_LOCATION then
        print(string.format("onLocation: could not find location mapping for id %s", location_id))
    end
    if not v[1] then
        return
    end
    local obj = Tracker:FindObjectForCode(v[1])
    if obj then
        if v[1]:sub(1, 1) == "@" then
            obj.AvailableChestCount = obj.AvailableChestCount - 1
        else
            obj.Active = true
        end
    elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_LOCATION then
        print(string.format("onLocation: could not find object for code %s", v[1]))
    end
    can_finish()
end

-- called when a locations is scouted
function onScout(location_id, location_name, item_id, item_name, item_player)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_SCOUT then
        print(string.format("called onScout: %s, %s, %s, %s, %s", location_id, location_name, item_id, item_name,
            item_player))
    end
end

-- called when a bounce message is received 
function onBounce(value)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_BOUNCE then
        print(string.format("called onBounce: %s", dump_table(value)))
    end

    -- if not value then
    --     return
    -- end

    -- local slots = value["slots"]

    -- if not slots or not (slots[1] == Archipelago.PlayerNumber and slots[2] == nil) then
    --     return
    -- end

    -- local data = value["data"]
    -- if not data then
    --     return
    -- end

    -- onMap(data)
end

-- add AP callbacks
-- un-/comment as needed
Archipelago:AddClearHandler("clear handler", onClear)
if AUTOTRACKER_ENABLE_ITEM_TRACKING then
    Archipelago:AddItemHandler("item handler", onItem)
end
if AUTOTRACKER_ENABLE_LOCATION_TRACKING then
    Archipelago:AddLocationHandler("location handler", onLocation)
end
Archipelago:AddSetReplyHandler("set reply handler", onSetReply)
Archipelago:AddScoutHandler("scout handler", onScout)
Archipelago:AddBouncedHandler("bounce handler", onBounce)
