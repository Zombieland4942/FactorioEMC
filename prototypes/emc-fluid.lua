
data:extend({
    {
		type = "fluid",
		name = "emc-fluid",
		default_temperature = 25,
		max_temperature = 1000000,
		auto_barrel = true,
		base_color = {r=0.1, g=0.9, b=0.8},
		flow_color = {r=1, g=1, b=1},
		icon =  "__FactorioEMC__/graphics/icons/emc-fluid.png", icon_size = 64, icon_mipmaps = 4,
		order = "a[fluid]-a[emc-matter]"
    }
})