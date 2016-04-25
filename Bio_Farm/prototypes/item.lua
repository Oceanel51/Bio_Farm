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
    icon = "__Bio_Farm__/graphics/icons/Bio_Farm_Lamp.png",
    flags = {"hidden"},
    subgroup = "production-machine",
    place_result = "bf_light_for_Bio_Farm",
    stack_size= 10,
	enable = false,
  },
  
  {
    type = "item",
    name = "bf_medium-electric-pole_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/icons/empty.png",
    flags = {"hidden"},
    subgroup = "energy-pipe-distribution",
    place_result = "bf_medium-electric-pole_for_Bio_Farm",
    stack_size = 50,
	enable = false,
  },
  {
    type = "item",
    name = "bf_solar-panel_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/icons/Bio_Farm_Solar.png",
    flags = {"hidden"},
    subgroup = "energy",
    place_result = "bf_solar-panel_for_Bio_Farm",
    stack_size = 50,
	enable = false,
  },
  
	{
		type = "item",
		name = "bf-woodpulp",
		icon = "__Bio_Farm__/graphics/icons/Woodpulp_32.png",
		flags = {"goes-to-main-inventory"},
		fuel_value = "2MJ",
		subgroup = "raw-material",
		order = "b[woodpulp]",
		stack_size = 200
	},  

  
  
})


   data:extend(
{
	{
		type = "item",
		name = "bf-charcoal",
		icon = "__Bio_Farm__/graphics/icons/charcoal.png",
		flags = {"goes-to-main-inventory"},
		fuel_value = "6MJ",
		subgroup = "raw-material",
		order = "b[charcoal]",
		stack_size = 50
	},  

	{
		type = "item",
		name = "bf-coke-coal",
		icon = "__Bio_Farm__/graphics/icons/coke-coal.png",
		flags = {"goes-to-main-inventory"},
		fuel_value = "18MJ",
		subgroup = "raw-material",
		order = "b[coke-coal]",
		stack_size = 50
	},

	{
		type = "item",
		name = "bf-ash",
		icon = "__Bio_Farm__/graphics/icons/ash.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-material",
		order = "b[ash]",
		stack_size = 200
	},

	{
		type = "item",
		name = "bf-crushed-stone",
		icon = "__Bio_Farm__/graphics/icons/crushed-stone.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-material",
		order = "b[crushed-stone]",
		stack_size = 100
	},

	{
		type = "item",
		name = "bf-phosphate",
		icon = "__Bio_Farm__/graphics/icons/phosphate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "b[phosphate]",
		stack_size = 100
	},

	{
		type = "item",
		name = "bf-potassium",
		icon = "__Bio_Farm__/graphics/icons/potassium.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "b[potassium]",
		stack_size = 100
	},

	{
		type = "item",
		name = "bf-fertilizer",
		icon = "__Bio_Farm__/graphics/icons/fertilizer_32.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "b[fertilizer]",
		stack_size = 200
	},
	{
		type = "item",
		name = "bf-adv-fertilizer",
		icon = "__Bio_Farm__/graphics/icons/advanced_fertilizer_32.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "c[fertilizer]",
		stack_size = 200
	},	

	{
		type = "item",
		name = "bf-cellulose",
		icon = "__Bio_Farm__/graphics/icons/cellulose.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "b[cellulose]",
		stack_size = 200
	},


	{
		type = "item",
		name = "bf-cokery",
		icon = "__Bio_Farm__/graphics/icons/cokery.png",
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "zzz[cokery]",
		place_result = "bf-cokery",
		stack_size = 10
	},

	{
		type = "item",
		name = "bf-stone-crusher",
		icon = "__Bio_Farm__/graphics/icons/stone-crusher.png",
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "zzz[stone-crusher]",
		place_result = "bf-stone-crusher",
		stack_size = 10
	},

	{
		type = "item",
		name = "bf-bioreactor",
		icon = "__Bio_Farm__/graphics/icons/bioreactor.png",
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "zzz[bioreactor]",
		place_result = "bf-bioreactor",
		stack_size = 10
	},
	
})

-------- Bio Garden

data:extend({
  
    {
    type = "item",
    name = "Bio_Garden",
    icon = "__Bio_Farm__/graphics/icons/bio_garden_icon.png",
    flags = { "goes-to-quickbar" },
    subgroup = "production-machine",
    order = "f[Bio_Garden]",
    place_result = "Bio_Garden",
    stack_size = 10
  },
  
  {
    type = "item",
    name = "void",
    icon = "__Bio_Farm__/graphics/icons/void.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "raw-material",
    order = "void",
    stack_size = 100
  },
  
  })