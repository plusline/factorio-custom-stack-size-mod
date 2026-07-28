local function set_stack_size(item_name, new_size)
    if data.raw["item"][item_name] then
        data.raw["item"][item_name].stack_size = new_size
        log("Updated stack size for " .. item_name .. " to " .. new_size)
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
    if setting and setting.value then
        size = setting.value
    end
    set_stack_size(item_name, size)
end


