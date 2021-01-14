
local agrs = { emcAmmount = 40960, energy_required = 5 }

data:extend({
    {
        type = "item",
        name = "red-matter",
        icon = "__FactorioEMC__/graphics/icons/red-matter.png", icon_size = 64, icon_mipmaps = 4,
        fuel_value = "400GJ",
        fuel_category = "matter-fuel",
        subgroup = "emc-fuel",
        order = "d[2[2]]",
        stack_size = 10
    },
    {
        type = "recipe",
        name = "red-matter",
        energy_required = 20,
        category = "advanced-crafting",
        enabled = true,
        ingredients =
        {
            { "dark-matter", 8 }
        },
        results =
        {
            { type="item", name="red-matter", amount=1 }
        }
    },
})