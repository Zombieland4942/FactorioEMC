
data:extend({
    {
        type = "item",
        name = "alchemical-coal",
        icon = "__FactorioEMC__/graphics/icons/alchemical-coal.png", icon_size = 64, icon_mipmaps = 4,
        fuel_value = "40MJ",
        fuel_category = "chemical",        
        fuel_acceleration_multiplier = 1.2,
        fuel_top_speed_multiplier = 1.05,
        allow_decomposition = true,
        subgroup = "emc-fuel",
        order = "d1[1]",
        stack_size = 50
    },
    {
        type = "recipe",
        name = "alchemical-coal",
        energy_required = 5,
        category = "advanced-crafting",
        enabled = true,
        ingredients =
        {
            { "coal", 10 }
        },
        results =
        {
            { type="item", name="alchemical-coal", amount=1 }
        }
    },
})