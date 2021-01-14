FactorioEMC = {}

local itemMultiplier = 5

function FactorioEMC.addEMCItem(args)
    -- TODO Test that the thing passed in is an Item

    local energy_required =  1
    local icon_scale = args.scale or 0.28

    if args.energy_required then
        energy_required = args.energy_required * 1
    end

    local emcAmmount = args.emcAmmount * 1
    local theItem = data.raw["item"][args.name]
    local itemAmount = args.count or itemMultiplier

    log(serpent.block(theItem))

    local item_to_emc = 
    {
        type = "recipe",
        name = "emc-production-" .. args.name,
        icons =
        {
            { icon = "__FactorioEMC__/graphics/icons/arrow-m.png", icon_size = 64 },
            { icon = theItem.icon, icon_size = theItem.icon_size, scale = icon_scale, shift = { -8, -6 } },
            { icon = "__FactorioEMC__/graphics/icons/emc-fluid.png",  icon_size = 64, scale = 0.28, shift = { 4, 8 } }
        },
        energy_required = energy_required,
        category = "emc-production",
        subgroup = "to-emc",
        order = args.order,
        hide_from_player_crafting = true,
        enabled = true,
        ingredients =
        {
            { args.name, itemAmount }
        },
        results =
        {
            { type="fluid", name="emc-fluid", amount=emcAmmount}
        }
    }

    local emc_to_item = 
    {
        type = "recipe",
        name = "emc-consumption-" .. args.name,
        icons =
        {
            { icon = "__FactorioEMC__/graphics/icons/arrow-i.png", icon_size = 64 },
            { icon = "__FactorioEMC__/graphics/icons/emc-fluid.png",  icon_size = 64, scale = 0.28, shift = { 8, -6 } },            
            { icon = theItem.icon, icon_size = theItem.icon_size, scale = icon_scale, shift = { -4, 8 } }
        },
        energy_required = energy_required,
        category = "emc-consumption",
        subgroup = "from-emc",
        order = args.order,
        hide_from_player_crafting = true,
        enabled = true,
        ingredients =
        {
            { type="fluid", name="emc-fluid", amount=emcAmmount }
        },
        results =
        {
            { type="item", name=args.name, amount=itemAmount }
        }
    }


    data:extend({ item_to_emc, emc_to_item })    

end

function FactorioEMC.addEMCFluid(args)
    -- TODO Test that the thing passed in is an Item

    local energy_required =  0.5

    if args.energy_required then
        energy_required = args.energy_required
    end

    local theFluid = data.raw["fluid"][args.name]
    local emcAmmount = args.emcAmmount
    local itemAmount = args.count or itemMultiplier

    data:extend({
        {
            type = "recipe",
            name = "emc-production-" .. args.name,
            icons =
            {
                { icon = "__FactorioEMC__/graphics/icons/arrow-m.png", icon_size = 64 },
                { icon = theFluid.icon, icon_size = theFluid.icon_size, scale = 0.28, shift = { -8, -6 } },
                { icon = "__FactorioEMC__/graphics/icons/emc-fluid.png",  icon_size = 64, scale = 0.28, shift = { 4, 8 } }
            },
            energy_required = energy_required,
            category = "emc-production",
            subgroup = "to-emc",
            order = args.order,
            hide_from_player_crafting = true,
            enabled = true,
            ingredients =
            {
                { type="fluid", name=args.name, amount=itemAmount }
            },
            results =
            {
                { type="fluid", name="emc-fluid", amount=emcAmmount }
            },
            crafting_machine_tint =
            {
                primary = { r=0.1, g=0.9, b=0.8, a=1 },
                secondary = { r=0.1, g=0.9, b=0.8, a=1 },
                tertiary = { r=0.1, g=0.9, b=0.8, a=1 },
                quaternary = { r=0.1, g=0.9, b=0.8, a=1 }
            }
        },
        {
            type = "recipe",
            name = "emc-consumption-" .. args.name,
            icons =
            {
                { icon = "__FactorioEMC__/graphics/icons/arrow-i.png", icon_size = 64 },
                { icon = "__FactorioEMC__/graphics/icons/emc-fluid.png",  icon_size = 64, scale = 0.28, shift = { 8, -6 } },            
                { icon = theFluid.icon, icon_size = theFluid.icon_size, scale = 0.28, shift = { -4, 8 } }
            },
            energy_required = energy_required,
            category = "emc-consumption",
            subgroup = "from-emc",
            order = args.order,
            hide_from_player_crafting = true,
            enabled = true,
            ingredients =
            {                
                { type="fluid", name="emc-fluid", amount=emcAmmount }
            },
            results =
            {
                { type="fluid", name=args.name, amount=itemAmount }
            }, 
            crafting_machine_tint =
            {
                primary = { r=0.1, g=0.9, b=0.8, a=1 },
                secondary = { r=0.1, g=0.9, b=0.8, a=1 },
                tertiary = { r=0.1, g=0.9, b=0.8, a=1 },
                quaternary = { r=0.1, g=0.9, b=0.8, a=1 }
            }
        }
    })    

end

return FactorioEMC