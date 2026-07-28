-- 通用函式：修改指定物品的堆疊數量
local function set_stack_size(item_name, new_size)
    if data.raw["item"][item_name] then
        data.raw["item"][item_name].stack_size = new_size
        log("Updated stack size for " .. item_name .. " to " .. new_size)
    elseif data.raw["item-with-entity-data"][item_name] then
        data.raw["item-with-entity-data"][item_name].stack_size = new_size
        log("Updated stack size for entity-data item " .. item_name .. " to " .. new_size)
    else
        log("Item " .. item_name .. " not found in data.raw")
    end
end

-- 使用範例
set_stack_size("promethium-asteroid-chunk", 2000)

-- 批量修改範例
local items_to_update = {"coal", "stone", "wood"}
for _, item_name in pairs(items_to_update) do
    set_stack_size(item_name, 500)
end

-- 新增一個自訂物品
data:extend({
    {
        type = "item",
        name = "super-iron-plate",
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        subgroup = "raw-material",
        order = "b[iron-plate]-z[super]",
        stack_size = 1000
    }
})

