local items = {
    "coal",
    "stone",
    "wood",
    "promethium-asteroid-chunk"
}

for _, item_name in pairs(items) do
    data:extend({
        {
            type = "bool-setting",
            name = "stackmod-enable-" .. item_name,
            setting_type = "startup",
            default_value = false,
            order = item_name
        }
    })
end
