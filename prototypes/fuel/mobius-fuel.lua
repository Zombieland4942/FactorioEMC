
data:extend({
    {
        type = "item",
        name = "mobius-fuel",
        icon = "__FactorioEMC__/graphics/icons/mobius-fuel.png", icon_size = 64, icon_mipmaps = 4,
        fuel_value = "320MJ",
        fuel_category = "chemical",        
        fuel_acceleration_multiplier = 1.6,
        fuel_top_speed_multiplier = 1.08,
        allow_decomposition = true,
        subgroup = "emc-fuel",
        order = "d1[2]",
        stack_size = 50
    },
    {
        type = "recipe",
        name = "mobius-fuel",
        energy_required = 5,
        category = "advanced-crafting",
        enabled = true,
        ingredients =
        {
            { "alchemical-coal", 8 }
        },
        results =
        {
            { type="item", name="mobius-fuel", amount=1 }
        }
    },
})