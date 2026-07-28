local items = {
    ["coal"] = 200,
    ["stone"] = 200,
    ["wood"] = 200,
    ["promethium-asteroid-chunk"] = 2
}

for item_name, default_size in pairs(items) do
    data:extend({
        {
            type = "int-setting",
            name = "stackmod-stacksize-" .. item_name,
            setting_type = "startup",
            default_value = default_size,
            minimum_value = 1,
            maximum_value = 1000000,
            order = item_name
        }
    })
end
