local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{
    {
        type = "technology",
        name = "red-matter-reactor",
        icon = "__FactorioEMC__/graphics/icons/red-matter-reactor.png", icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "red-matter-reactor"
            },
            {
                type = "unlock-recipe",
                recipe = "red-matter"
            },
            {
                type = "unlock-recipe",
                recipe = "dark-matter"
            }
        },
        prerequisites = {"nuclear-power"},
        unit =
        {
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60,
            count = 1000
        },
        order = "e-p-b-c"
    },
})
