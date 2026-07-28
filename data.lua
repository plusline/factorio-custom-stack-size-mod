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
    ["promethium-asteroid-chunk"] = 100
}

for item_name, size in pairs(items) do
    local setting = settings.startup["stackmod-enable-" .. item_name]
    if setting and setting.value then
        set_stack_size(item_name, size)
    end
end


