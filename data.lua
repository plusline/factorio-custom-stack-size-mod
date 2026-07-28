local function set_stack_size(item_name, new_size)
    if data.raw["item"][item_name] then
        data.raw["item"][item_name].stack_size = new_size
        log("Updated stack size for " .. item_name .. " to " .. new_size)
    end
end

local function set_exoskeleton_movement_bonus(new_bonus)
    local exoskeleton = data.raw["movement-bonus-equipment"] and data.raw["movement-bonus-equipment"]["exoskeleton-equipment"]
    if exoskeleton then
        exoskeleton.movement_bonus = new_bonus
        log("Updated exoskeleton movement bonus to " .. new_bonus)
    end
end

local items = {
    ["coal"] = 200,
    ["stone"] = 200,
    ["wood"] = 200,
    ["promethium-asteroid-chunk"] = 2
}

for item_name, default_size in pairs(items) do
    local setting = settings.startup["stackmod-stacksize-" .. item_name]
    local size = default_size
    if setting and setting.value ~= nil then
        size = setting.value
    end
    set_stack_size(item_name, size)
end

local movement_bonus_setting = settings.startup["stackmod-movement-bonus"]
local movement_bonus = 0.3

if movement_bonus_setting and movement_bonus_setting.value ~= nil then
    movement_bonus = movement_bonus_setting.value
end

set_exoskeleton_movement_bonus(movement_bonus)


