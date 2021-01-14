
local agrs = { emcAmmount = 10240, energy_required = 5 }

data:extend({
    {
        type = "item",
        name = "dark-matter",
        icon = "__FactorioEMC__/graphics/icons/dark-matter.png", icon_size = 64, icon_mipmaps = 4,
        fuel_value = "200GJ",
        fuel_acceleration_multiplier = 3,
        fuel_top_speed_multiplier = 1.5,
        allow_decomposition = true,
        fuel_category = "chemical",
        subgroup = "emc-fuel",
        order = "d[2[1]]",
        stack_size = 10
    },
    {
        type = "recipe",
        name = "dark-matter",
        energy_required = 15,
        category = "advanced-crafting",
        enabled = false,
        ingredients =
        {
            { "aeternalis-fuel", 8 }
        },
        results =
        {
            { type="item", name="dark-matter", amount=1 }
        }
    },
})