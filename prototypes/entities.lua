require ("prototypes.pipeConnectors")
require ("util")


data:extend({

  {
    type = "assembling-machine",
    name = "bf_bio_farm",
    icon = "__Bio_Farm__/graphics/icons/Bio_Farm_Icon.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "bf_bio_farm"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = {{type = "fire", percent = 70}},
	fluid_boxes =
    {
		{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,        
		pipe_connections = {{ type="input", position = {-1, -5} }}
		},
		{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -5} }}
		},
      off_when_no_fluid_recipe = true
	  
    },

	collision_box = {{-4.3, -4.3}, {4.3, 4.3}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},

	animation =
	{
		filename = "__Bio_Farm__/graphics/entities/biofarm/Bio_Farm_Idle.png",
		priority = "high",
		width = 320,
		height = 320,
		frame_count = 1,
		shift = {0.75, 0},
	},
	
	working_visualisations =
	{

		animation =
		{
			filename = "__Bio_Farm__/graphics/entities/biofarm/Bio_Farm_Working.png",
			priority = "high",
			width = 320,
			height = 320,
			frame_count = 1,
			shift = {0.75, 0},
		},
	},

    crafting_categories = {"biofarm-mod-dummy"},
    crafting_speed = 1,
    energy_source =

	{
      type = "electric",
      usage_priority = "primary-input",
	  drain = "50kW",
	  emissions = -0.2,
    },	

    energy_usage = "100kW",
    ingredient_count = 3,
	module_slots = 0,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

  },
  
  {
    type = "lamp",
    name = "bf_light_for_Bio_Farm",
	selectable_in_game = false,
    icon = "__Bio_Farm__/graphics/icons/empty.png",

    max_health = 0,
    collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
	energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "100kW",
    light = {intensity = 0.95, size = 35},
    picture_off =
    {
      filename = "__Bio_Farm__/graphics/entities/biofarm/Bio_Farm_Idle.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
	  shift = {0.75, 0},
    },
    picture_on =
    {
      filename = "__Bio_Farm__/graphics/entities/biofarm/Bio_Farm_Working.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
	  shift = {0.75, 0},
    },

  },
  
  {
    type = "electric-pole",
    name = "bf_medium-electric-pole_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/icons/empty.png",
	selectable_in_game = false,
    max_health = 1,
    resistances = {{type = "fire", percent = 100}},
    collision_box = {{-0, -0}, {0, 0}},
    maximum_wire_distance = 10,
    supply_area_distance = 4.5,
 
    pictures =
    {
      filename = "__Bio_Farm__/graphics/icons/empty.png",
      priority = "low",
      width = 0,
      height = 0,
	  frame_count = 1,
      axially_symmetrical = false,
      direction_count = 4,
	  shift = {0.75, 0},
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.55, 0.4},
        },
        wire =
        {
          copper = {-0.03, -2.5},
        }
      },
      {
        shadow =
        {
          copper = {2.9, 0.1},
        },
        wire =
        {
          copper = {0.05, -2.75},
        }
      },
      {
        shadow =
        {
          copper = {1.5, -0.2},
        },
        wire =
        {
          copper = {-0.43, -2.4},
        }
      },
      {
        shadow =
        {
          copper = {2.88, 0.2},
        },
        wire =
        {
          copper = {0, -2.7},
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__Bio_Farm__/graphics/icons/empty.png",
      width = 0,
      height = 0,
      priority = "low"
    },
  },
  
  {
    type = "solar-panel",
    name = "bf_solar-panel_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/icons/empty.png",
	selectable_in_game = false,
    max_health = 1,
    resistances = {{type = "fire", percent = 100}},
    collision_box = {{-0, -0}, {0, 0}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Bio_Farm__/graphics/icons/empty.png",
      priority = "low",
      width = 0,
      height = 0,
    },
    production = "100kW"
  },
  
  })
 
 
data:extend(
{

 
	-- COKERY
	{
    type = "container",
    name = "bf-cokery-dummy",
    icon = "__Bio_Farm__/graphics/icons/cokery.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "bf-cokery"},
		max_health = 200,
		corpse = "big-remnants",
		resistances = {{type = "fire", percent = 70}},
		collision_box = {{-1.4, -2.0}, {1.4, 2.4}},
		selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    inventory_size = 1,
    picture =
    {
      filename = "__Bio_Farm__/graphics/entities/cokery/cokery-idle.png",
      priority = "extra-high",
      width = 100,
      height = 160,
      shift = {0.0, 0.0}
    }
  },

	{
		type = "assembling-machine",
		name = "bf-cokery",
		icon = "__Bio_Farm__/graphics/icons/cokery.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		order = "a[cokery]",
		minable = {hardness = 0.2, mining_time = 0.5, result = "bf-cokery"},
		max_health = 200,
		corpse = "big-remnants",
		resistances = {{type = "fire", percent = 70}},
		collision_box = {{-1.4, -2.0}, {1.4, 2.4}},
		selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
		module_slots = 2,
		allowed_effects = {"consumption", "speed"},

		animation =
		{
			north =
			{
				filename = "__Bio_Farm__/graphics/entities/cokery/cokery-idle.png",
				width = 100,
				height = 160,
				frame_count = 1,
				line_length = 1,
				shift = {0, 0}
			},
			south =
			{
				filename = "__Bio_Farm__/graphics/entities/cokery/cokery-idle.png",
				width = 100,
				height = 160,
				frame_count = 1,
				line_length = 1,
				shift = {0, 0}
			},
			west =
			{
				filename = "__Bio_Farm__/graphics/entities/cokery/cokery-idle.png",
				width = 100,
				height = 160,
				frame_count = 1,
				line_length = 1,
				shift = {0, 0}
			},
			east =
			{
				filename = "__Bio_Farm__/graphics/entities/cokery/cokery-idle.png",
				width = 100,
				height = 160,
				frame_count = 1,
				line_length = 1,
				shift = {0, 0}
			}
		},
		working_visualisations =
		{

			{
				north_position = { 0.0,  0.0},
				south_position = { 0.0,  0.0},
				west_position  = { 0.0,  0.0},	--{ 1.3, -2.0},
				east_position  = { 0.0,  0.0},	--{ 1.3, -2.0},
			
				animation =
				{
					filename = "__Bio_Farm__/graphics/entities/cokery/cokery-anim.png",
					frame_count = 28,
					line_length = 14,
					width = 100,
					height = 160,
					scale = 1.0,
					shift = {0, 0},
					animation_speed = 0.1
				}
			}
		},
		crafting_categories = {"biofarm-mod-smelting"},
		energy_source =
		{
			type = "electric",
			input_priority = "secondary",
			usage_priority = "secondary-input",
			emissions = 6 / 3
		},
		energy_usage = "6W",
		crafting_speed = 2,
		ingredient_count = 1
	},
	-- STONECRUSHER
	{
		type = "furnace",
		name = "bf-stone-crusher",
		icon = "__Bio_Farm__/graphics/icons/stone-crusher.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.2,mining_time = 0.5,result = "bf-stone-crusher"},
		max_health = 100,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		module_slots = 1,
		resistances = {{type = "fire",percent = 70}},
		working_sound = {
							sound = {
										filename = "__base__/sound/assembling-machine-t1-1.ogg",
										volume = 0.7
									},
							apparent_volume = 1.5
						},
		collision_box = {{-0.9,-0.9},{0.9,0.9}},
		selection_box = {{-1.0,-1.0},{1.0,1.0}},
		animation = {
							filename = "__Bio_Farm__/graphics/entities/stone-crusher/stone-crusher-off-anim.png",
							priority = "high",
							width = 65,
							height = 78,
							frame_count = 1,
							animation_speed = 0.5,
							shift = {0.0, -0.1}
						},
		working_visualisations = {
							filename = "__Bio_Farm__/graphics/entities/stone-crusher/stone-crusher-anim.png",
							priority = "high",
							width = 65,
							height = 78,
							frame_count = 11,
							animation_speed = 0.18 / 2.5,
							shift = {0.0, -0.1}
						},
		crafting_categories = {"biofarm-mod-crushing"},
		result_inventory_size = 1,
		source_inventory_size = 1,
		crafting_speed = 1,
		energy_source = {
							type = "electric",
							usage_priority = "secondary-input",
							emissions = 0.05 / 1.5
						},
		energy_usage = "50kW"
	},
	-- BIOREACTOR
	{
		type = "assembling-machine",
		name = "bf-bioreactor",
		icon = "__Bio_Farm__/graphics/icons/bioreactor.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "bf-bioreactor"},
		max_health = 100,
		corpse = "big-remnants",
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {2, 0} }}
			},
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, 2} }}
			},


			{
				production_type = "output",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {-2, -1} }}
			},
			{
				production_type = "output",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {-2, 1} }}
			},
			off_when_no_fluid_recipe = false
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation =
		{
			filename = "__Bio_Farm__/graphics/entities/bioreactor/bioreactor.png",
			priority = "high",
			width = 128,
			height = 150,
			frame_count = 26,
			line_length = 13,
			animation_speed = 0.4,
			shift = {0.55, -0.33}
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		crafting_categories = {"biofarm-mod-bioreactor"},
		ingredient_count = 3,
		crafting_speed = 1,
		energy_usage = "10kW"
	},

	-- BIOLAB
	{
		type = "assembling-machine",
		name = "bf-biolab",
		icon = "__Bio_Farm__/graphics/icons/biolab.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "bf-biolab"},
		max_health = 300,
		corpse = "big-remnants",
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		module_slots = 2,
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		animation =
		{
			filename = "__Bio_Farm__/graphics/entities/biolab/biolab.png",
			width = 128,
			height = 128,
			frame_count = 16,
			line_length = 4,
			shift = {0.65, -0.25},
			scale = 1.2,
			animation_speed = 0.25
		},
		working_visualisations =
		{
			{
				north_position = {0.94, -0.73},
				west_position = {-0.3, 0.02},
				south_position = {-0.97, -1.47},
				east_position = {0.05, -1.46},
				animation =
				{
					filename = "__Bio_Farm__/graphics/icons/empty.png",
					frame_count = 1,
					width = 32,
					height = 32,
					animation_speed = 0.15
				}
			},
			{
				north_position = {1.4, -0.23},
				west_position = {-0.3, 0.55},
				south_position = {-1, -1},
				east_position = {0.05, -0.96},
				north_animation =
				{
					filename = "__Bio_Farm__/graphics/icons/empty.png",
					frame_count = 1,
					width = 32,
					height = 32,
					animation_speed = 0.15
				},
				west_animation =
				{
					filename = "__Bio_Farm__/graphics/icons/empty.png",
					frame_count = 1,
					width = 32,
					height = 32,
					animation_speed = 0.15
				},
				south_animation =
				{
					filename = "__Bio_Farm__/graphics/icons/empty.png",
					frame_count = 1,
					width = 32,
					height = 32,
					animation_speed = 0.15
				}
			}
		},
		crafting_speed = 1,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "180kW",
		ingredient_count = 4,
		crafting_categories = {"biofarm-mod-biolab"},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -2} }}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -2} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {-1, 2} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {1, 2} }}
			}
		}
	} 
  
  }
)
