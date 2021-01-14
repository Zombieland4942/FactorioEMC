local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{
    {
        type = "item",
        name = "emc-consumer",
        icon = "__FactorioEMC__/graphics/icons/emc-consumer.png", icon_size = 128,
        subgroup = "production-machine",
		order = "i[emc-consumer]",
		place_result = "emc-consumer",
		stack_size = 10
    },
	{
		type = "assembling-machine",
		name = "emc-consumer",		
		icon = "__FactorioEMC__/graphics/icons/emc-consumer.png",
		icon_size = 128,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 3, result = "emc-consumer"},
		max_health = 2000,
        damaged_trigger_effect = hit_effects.entity(),
		resistances = 
		{
			{type = "physical",percent = 50},
			{type = "fire",percent = 70},
			{type = "impact",percent = 70}
		},
		fluid_boxes =
		{
			-- Inputs
			{
				production_type = "input",
				pipe_picture = kr_pipe_path,
				pipe_covers = pipecoverspictures(),	
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input-output", position = {0, -4} }}
			},
			{
				production_type = "input",
				pipe_picture = kr_pipe_path,
				pipe_covers = pipecoverspictures(),	
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="input-output", position = {0, 4} }}
			},
			-- Outputs
			{
				production_type = "output",
				pipe_picture = kr_pipe_path,
				pipe_covers = pipecoverspictures(),	
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="input-output", position = {-4, 0} }}
			},
			{
				production_type = "output",
				pipe_picture = kr_pipe_path,
				pipe_covers = pipecoverspictures(),	
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="input-output", position = {4, 0} }}
			},
			off_when_no_fluid_recipe = false
		},
		collision_box = {{-3.25, -3.25}, {3.25, 3.25}},
		selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
		animation =
		{
			layers =
			{
				{
					filename = "__FactorioEMC__/graphics/entities/emc-consumer/emc-consumer.png",
					priority = "high",
					width = 236,
					height = 244,
					frame_count = 1,
					shift = {0, -0.15},
					hr_version =
					{
						filename = "__FactorioEMC__/graphics/entities/emc-consumer/hr-emc-consumer.png",
						priority = "high",
						scale = scale,
						width = 473,
						height = 489,
						frame_count = 1,
						scale = 0.5,
						shift = {0, -0.15},
					}
				},
				{
					filename = "__FactorioEMC__/graphics/entities/emc-consumer/emc-consumer-sh.png",
					priority = "medium",
					width = 254,
					height = 223,
					frame_count = 1,
					shift = {0.38, 0.22},
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__FactorioEMC__/graphics/entities/emc-consumer/hr-emc-consumer-sh.png",
						priority = "medium",
						width = 508,
						height = 446,
						frame_count = 1,
						scale = 0.5,
						shift = {0.38, 0.22},
						draw_as_shadow = true,
					}
				}
			}
		},		
		working_visualisations =
		{
			{
				draw_as_light = true,
				animation =
				{
					filename = "__FactorioEMC__/graphics/entities/emc-consumer/emc-consumer-working-glow-light.png",
					priority = "high",
					width = 72,
					height = 55,
					frame_count = 30,
					line_length = 6,
					animation_speed = 0.75,
					shift = {0, -0.23},
					hr_version =
					{
						filename = "__FactorioEMC__/graphics/entities/emc-consumer/hr-emc-consumer-working-glow-light.png",
						priority = "high",
						width = 144,
						height = 110,
						frame_count = 30,
						line_length = 6,
						scale = 0.5,
						animation_speed = 0.75,
						shift = {0, -0.23}
					}
				}
			},
			{
				draw_as_glow = true,
				blend_mode = "additive",
				synced_fadeout = true,
				animation =
				{
					filename = "__FactorioEMC__/graphics/entities/emc-consumer/emc-consumer-working-glow.png",
					priority = "high",
					width = 72,
					height = 55,
					frame_count = 30,
					line_length = 6,
					animation_speed = 0.75,
					shift = {0, -0.23},
					hr_version =
					{
						filename = "__FactorioEMC__/graphics/entities/emc-consumer/hr-emc-consumer-working-glow.png",
						priority = "high",
						width = 144,
						height = 110,
						frame_count = 30,
						line_length = 6,
						scale = 0.5,
						animation_speed = 0.75,
						shift = {0, -0.23}
					}
				}
			},
			{
				animation =
				{
					layers =
					{
						{
							filename = "__FactorioEMC__/graphics/entities/emc-consumer/emc-consumer-working-light.png",
							priority = "high",
							width = 236,
							height = 244,
							frame_count = 30,
							line_length = 6,
							animation_speed = 0.75,
							shift = {0, -0.15},
							draw_as_light = true,
							hr_version =
							{
								filename = "__FactorioEMC__/graphics/entities/emc-consumer/hr-emc-consumer-working-light.png",
								priority = "high",
								width = 473,
								height = 489,
								frame_count = 30,
								line_length = 6,
								scale = 0.5,
								animation_speed = 0.75,
								shift = {0, -0.15},
								draw_as_light = true
							}
						},
						{
							filename = "__FactorioEMC__/graphics/entities/emc-consumer/emc-consumer-working.png",
							priority = "high",
							width = 236,
							height = 244,
							frame_count = 30,
							line_length = 6,
							animation_speed = 0.75,
							shift = {0, -0.15},
							hr_version =
							{
								filename = "__FactorioEMC__/graphics/entities/emc-consumer/hr-emc-consumer-working.png",
								priority = "high",
								width = 473,
								height = 489,
								frame_count = 30,
								line_length = 6,
								scale = 0.5,
								animation_speed = 0.75,
								shift = {0, -0.15}
							}
						}
					}
				},
				light =
				{
					intensity = 0.80,
					size = 6,
					shift = {0, -0.15},
					color = {r=0.35, g=0.5, b=1}
				}
			}
		},		
		crafting_categories = {"emc-consumption"},
		scale_entity_info_icon = true,
		vehicle_impact_sound = sounds.generic_impact,
		working_sound =
		{
			sound = 
			{ 
				filename = "__FactorioEMC__/sounds/buildings/emc-consumer.ogg",
				volume = 0.3
			},
			idle_sound = { filename = "__base__/sound/idle1.ogg" },
			apparent_volume = 0.3
		},
		crafting_speed = 1.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 50
		},
		
		water_reflection =
		{
			pictures =
			{
				filename = "__FactorioEMC__/graphics/entities/emc-consumer/emc-consumer-reflection.png",
				priority = "extra-high",
				width = 46,
				height = 46,
				shift = util.by_pixel(0, 40),
				variation_count = 1,
				scale = 5,
			},
			rotate = false,
			orientation_to_variation = false
		},
		
		energy_usage = "48.39MW",
		ingredient_count = 6,
		module_specification = { module_slots = 4, module_info_icon_shift = {0, 1.8}, module_info_icon_scale = 0.6 },
		allowed_effects = {"consumption", "productivity", "speed", "pollution"},
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
	}
})