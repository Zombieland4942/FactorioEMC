

data:extend({
    {
        type = "item",
        name = "aeternalis-fuel",
        icon = "__FactorioEMC__/graphics/icons/aeternalis-fuel.png", icon_size = 64, icon_mipmaps = 4,
        fuel_value = "2560MJ",
        fuel_category = "chemical",        
        fuel_acceleration_multiplier = 2,
        fuel_top_speed_multiplier = 1.2,
        allow_decomposition = true,
        subgroup = "emc-fuel",
        order = "d1[3]",
        stack_size = 50
    },
    {
        type = "recipe",
        name = "aeternalis-fuel",
        energy_required = 10,
        category = "advanced-crafting",
        enabled = true,
        ingredients =
        {
            { "mobius-fuel", 8 }
        },
        results =
        {
            { type="item", name="aeternalis-fuel", amount=1 }
        }
    },
})