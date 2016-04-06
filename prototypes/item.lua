data:extend({

 {
    type = "item",
    name = "bf-seedling",
    icon = "__Bio_Farm__/graphics/icons/Seedling.png",
    flags = { "goes-to-quickbar" },
    subgroup = "raw-material",
    stack_size= 50,
  },
  {
    type= "item",
    name= "bf_bio_farm",
    icon = "__Bio_Farm__/graphics/icons/Bio_Farm_Icon.png",
    flags= { "goes-to-quickbar" },
    subgroup = "production-machine",
    place_result = "bf_bio_farm",
    stack_size= 10,
  },
  
  {
    type= "item",
    name= "bf_light_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/icons/empty.png",
    flags= { "goes-to-quickbar" },
    subgroup = "production-machine",
    place_result = "bf_light_for_Bio_Farm",
    stack_size= 10,
	enable = false,
  },
  
  {
    type = "item",
    name = "bf_medium-electric-pole_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/icons/empty.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-b[medium-electric-pole]",
    place_result = "bf_medium-electric-pole_for_Bio_Farm",
    stack_size = 50,
	enable = false,
  },
  {
    type = "item",
    name = "bf_solar-panel_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/icons/empty.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "d[solar-panel]-a[solar-panel]",
    place_result = "bf_solar-panel_for_Bio_Farm",
    stack_size = 50,
	enable = false,
  },
  
    -- Stone Crusher
	{
		type = "item",
		name = "bf-stone-crusher",
		icon = "__Bio_Farm__/graphics/icons/stone-crusher.png",
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "a[stone-crusher]",
		place_result = "bf-stone-crusher",
		stack_size = 10
	},
  
	-- Crushed Stone
  	{
		type = "item",
		name = "bf-crushed-stone",
		icon = "__Bio_Farm__/graphics/icons/crushed-stone.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-material",
		order = "b[crushed-stone]",
		stack_size = 100
	},

		--- Phosphate
	{
		type = "item",
		name = "bf-phosphate",
		icon = "__Bio_Farm__/graphics/icons/phosphate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-material",
		order = "b[phosphate]",
		stack_size = 100
	},

	--- Potassium
	{
		type = "item",
		name = "bf-potassium",
		icon = "__Bio_Farm__/graphics/icons/potassium.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-material",
		order = "b[potassium]",
		stack_size = 100
	},

	
	--- Fertilizer
	{
		type = "item",
		name = "bf-fertilizer",
		icon = "__Bio_Farm__/graphics/icons/fertilizer_32.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-material",
		order = "b[fertilizer]",
		stack_size = 100
	},
  
  
})