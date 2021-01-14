local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{
    {
        type = "item",
        name = "red-matter-reactor",
        icon = "__FactorioEMC__/graphics/icons/red-matter-reactor.png", icon_size = 128,
        subgroup = "production-machine",
		order = "i[red-matter-reactor]",
		place_result = "red-matter-reactor",
		stack_size = 10
    },
	{
		type = "burner-generator",
		name = "red-matter-reactor",
		icon = "__FactorioEMC__/graphics/icons/red-matter-reactor.png", icon_size = 128,
		flags = {"placeable-neutral", "placeable-player", "player-creation", "not-rotatable"},
		minable = {mining_time = 5, result = "red-matter-reactor"},
		max_health = 5000,
		damaged_trigger_effect = hit_effects.entity(),
		effectivity = 5,
		resistances =
		{
			{type = "physical", percent = 60},
			{type = "fire", percent = 90},
			{type = "impact", percent = 90}
		},
		collision_box = {{-4.75, -4.75}, {4.75, 4.75}},
		selection_box = {{-4.95, -4.95}, {4.95, 4.95}},
		fluid_box =
		{
			production_type = "input",
			base_area = 1,
			base_level = -1,
			pipe_connections = {{ type="input", position = {5, 0} }}
		},
		energy_source =
		{
			type = "electric",
			render_no_power_icon = false,
			usage_priority = "secondary-output"
		},
		burner =
		{
			type = "burner",
			fuel_categories = { "matter-fuel", "nuclear" },
			fuel_inventory_size = 1,
			burnt_inventory_size = 1,
			effectivity = 1,
			emissions_per_minute = 200,
			light_flicker =
			{
				minimum_intensity = 0.01,
				maximum_intensity = 0.50,
				derivation_change_frequency = 0.02,
				derivation_change_deviation	= 0.02,
				minimum_light_size = 1,
				color = {r=0.459, g=0.031, b=0.447}
			}
		},
		vehicle_impact_sound = sounds.generic_impact,
		animation =
		{
			layers =
			{
				{
					filename = "__FactorioEMC__/graphics/entities/red-matter-reactor/red-matter-reactor-light.png",
					priority = "high",
					width = 330,
					height = 353,
					shift = {0, -0.5},
					frame_count = 1,
					repeat_count = 30,
					animation_speed=0.9,
					scale = 0.96,
					draw_as_light = true,
					blend_mode = "additive",
					hr_version =
					{
						filename = "__FactorioEMC__/graphics/entities/red-matter-reactor/hr-red-matter-reactor-light.png",
						priority = "high",
						width = 660,
						height = 706,
						shift = {0, -0.5},
						frame_count = 1,
						repeat_count = 30,
						animation_speed=0.9,
						scale = 0.48,
						draw_as_light = true,
						blend_mode = "additive"
					}
				},
				{
					filename = "__FactorioEMC__/graphics/entities/red-matter-reactor/red-matter-reactor-glow.png",
					priority = "high",
					width = 330,
					height = 353,
					shift = {0, -0.5},
					frame_count = 1,
					repeat_count = 30,
					animation_speed=0.9,
					scale = 0.96,
					blend_mode = "additive-soft",
					draw_as_glow = true,
					fadeout = true,
					hr_version =
					{
						filename = "__FactorioEMC__/graphics/entities/red-matter-reactor/hr-red-matter-reactor-glow.png",
						priority = "high",
						width = 660,
						height = 706,
						shift = {0, -0.5},
						frame_count = 1,
						repeat_count = 30,
						animation_speed=0.9,
						scale = 0.48,
						blend_mode = "additive-soft",
						draw_as_glow = true,
						fadeout = true
					}
				},
				{
					filename = "__FactorioEMC__/graphics/entities/red-matter-reactor/red-matter-reactor.png",
					priority = "high",
					scale = scale,
					width = 330,
					height = 353,
					shift = {0, -0.5},
					frame_count = 30,
					line_length = 6,
					animation_speed=0.9,
					scale = 0.96,
					hr_version =
					{
						filename = "__FactorioEMC__/graphics/entities/red-matter-reactor/hr-red-matter-reactor.png",
						priority = "high",
						scale = scale,
						width = 660,
						height = 706,
						shift = {0, -0.5},
						frame_count = 30,
						line_length = 6,
						animation_speed=0.9,
						scale = 0.48
					}
				},
				{
					filename = "__FactorioEMC__/graphics/entities/red-matter-reactor/red-matter-reactor-sh.png",
					width = 362,
					height = 315,
					shift = {0.57, 0.27},
					frame_count = 1,
					repeat_count = 30,
					animation_speed=0.9,
					scale = 0.96,
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__FactorioEMC__/graphics/entities/red-matter-reactor/hr-red-matter-reactor-sh.png",
						width = 724,
						height = 630,
						shift = {0.57, 0.27},
						frame_count = 1,
						repeat_count = 30,
						animation_speed=0.9,
						scale = 0.48,
						draw_as_shadow = true
					}
				}
			}
		},
		working_sound =
		{
			sound =
			{
				{
					filename = "__FactorioEMC__/sounds/buildings/red-matter-reactor.ogg",
					volume = 0.3
				}
			}
		},
		open_sound = { filename = "__FactorioEMC__/sounds/buildings/open.ogg", volume = 0.75 },
		close_sound = { filename = "__FactorioEMC__/sounds/buildings/close.ogg", volume = 0.75 },
		audible_distance_modifier = 10,
		min_perceived_performance = 0.25,
		performance_to_sound_speedup = 0.5,
		max_power_output = "2000MW"
	}
})
