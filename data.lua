
require("prototypes.emc-fluid")
require("prototypes.emc-consumer")
require("prototypes.emc-producer")

require("prototypes.matter.dark-matter")
require("prototypes.matter.red-matter")

require("prototypes.fuel.alchemical-coal")
require("prototypes.fuel.mobius-fuel")
require("prototypes.fuel.aeternalis-fuel")

require("prototypes.klein-star")

require("prototypes.red-matter-reactor")

require("prototypes.technology")

data:extend({
    {
        type = "recipe-category",
        name = "emc-production"
    },
    {
        type = "recipe-category",
        name = "emc-consumption"
    },
    {
        type = "item-subgroup",
        name = "emc-fuel",
        group = "intermediate-products",
        order = "b1"
    },  
    {
        type = "item-subgroup",
        name = "emc-storage",
        group = "intermediate-products",
        order = "b2"
    }, 
    {
        type = "item-subgroup",
        name = "to-emc",
        group = "intermediate-products",
        order = "a"
    }, 
    {
        type = "item-subgroup",
        name = "from-emc",
        group = "intermediate-products",
        order = "b"
    }, 
    {
		type = "fuel-category",
		name = "matter-fuel"
	},
})

FactorioEMC = require("utility.emc-util")

FactorioEMC.addEMCFluid({ order = "a", name = "water",          emcAmmount = 0.5 })
FactorioEMC.addEMCItem({  order = "b", name = "stone",          emcAmmount = 2 })
FactorioEMC.addEMCItem({  order = "c", name = "wood",           emcAmmount = 2 })
FactorioEMC.addEMCItem({  order = "d", name = "coal",           emcAmmount = 4 })
FactorioEMC.addEMCItem({  order = "e", name = "iron-ore",       emcAmmount = 8 })
FactorioEMC.addEMCItem({  order = "f", name = "copper-ore",     emcAmmount = 8 })
FactorioEMC.addEMCFluid({ order = "g", name = "crude-oil",      emcAmmount = 8 })
FactorioEMC.addEMCItem({  order = "h", name = "uranium-ore",    emcAmmount = 15 })

 
FactorioEMC.addEMCItem({ order = "i", name = "klein-star-ein",   emcAmmount = 5000,  scale = 0.48, count = 1 })
FactorioEMC.addEMCItem({ order = "j", name = "klein-star-zwei",  emcAmmount = 10000, scale = 0.48, count = 1 })
FactorioEMC.addEMCItem({ order = "k", name = "klein-star-drei",  emcAmmount = 20000, scale = 0.48, count = 1 })
FactorioEMC.addEMCItem({ order = "l", name = "klein-star-vier",  emcAmmount = 40000, scale = 0.48, count = 1 })

if mods["zombiesextended-core"] then        
    FactorioEMC.addEMCItem({  order = "g-2", name = "gold-ore",    emcAmmount = 10 })
    FactorioEMC.addEMCItem({  order = "h-2", name = "vibranium-ore",    emcAmmount = 15 })
end