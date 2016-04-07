data:extend({
	--- Seedling
	{
    type = "recipe",
    name = "bf-seedling",
    enabled = "false",
    energy_required = 0.5,
    ingredients = {{"raw-wood",1}},
	results=
    {
      {type="item", name="bf-seedling", amount=2},
      {type="item", name="bf-woodpulp", amount=1}
    }
	
	},
	
	--- Bio Farm
	{
    type = "recipe",
    name = "bf_bio_farm",
    enabled = "false",
    ingredients = 
    {
      {"iron-stick",20},
      {"copper-cable",10},
      {"stone",20},
      {"small-lamp",10}
    },
    result = "bf_bio_farm"
	},
	
		--- Raw Wood from Water
	{
    type = "recipe",
    name = "bf-Logs_Mk1",
    category = "biofarm-mod-dummy",
    enabled = "false",
    energy_required = 240,
	ingredients =
    {
      {type="item", name="bf-seedling", amount=10},     
      {type="fluid", name="water", amount=100},
    },
    result_count = 15,
    result = "raw-wood"
	},
	
		--- Raw Wood from Water & Fertilizer
	{
    type = "recipe",
    name = "bf-Logs_Mk2",
    category = "biofarm-mod-dummy",
    enabled = "false",
    energy_required = 200,
	ingredients =
    {
      {type="item", name="bf-seedling", amount=10},     
	  {type="item", name="bf-fertilizer", amount=10},     
      {type="fluid", name="water", amount=100},
    },
    result_count = 50,
    result = "raw-wood"
	},
	
		
		--- Raw Wood from Fertilizer & NE_enhanced-nutrient-solution (Natural Evolution Mod)
	{
    type = "recipe",
    name = "bf-Logs_Mk3",
    category = "biofarm-mod-dummy",
    enabled = "false",
    energy_required = 180,
	ingredients =
    {
      {type="item", name="bf-seedling", amount=10},     
	  --{type="item", name="bf-adv-fertilizer", amount=5},     
      {type="fluid", name="water", amount=100},
    },
    result_count = 100,
    result = "raw-wood"
	},
	
	
		-- Advanced FERTILIZER --
	{
		type = "recipe",
		name = "bf-adv-fertilizer",
		category = "chemistry",
		energy_required = 125,
		icon = "__Bio_Farm__/graphics/icons/advanced_fertilizer_32.png",
		ingredients =
		{
			{type="item", name="bf-fertilizer", amount=25},
			{type="item", name="bf-woodpulp", amount=50},
			--{type="item", name="small-alien-artifact", amount=50},
			{type="fluid", name="NE_enhanced-nutrient-solution", amount=5},
		},
		results=
		{
			{type="item", name="bf-adv-fertilizer", amount=50}
		},
		enabled = "false"
	},
	
})

data:extend(
{

	-- RECIPE-DUMMY FOR FIELD TO USE FERTILIZER
--[[
	{
		type = "recipe",
		name = "fertwork",
		icon = "__Bio_Farm__/graphics/icons/fertilizer.png",
		subgroup = "raw-material",
		order = "b[charcoal]",
		hidden = true,
		category = "biofarm-mod-dummy",
		energy_required = 18,
		ingredients = {{"bf-fertilizer",101}},
		result = "bf-charcoal",
		result_count = 10,
		enabled = "true"
	},
	]]
	-- CHARCOAL 1
	{
		type = "recipe",
		name = "bf-charcoal",
		icon = "__Bio_Farm__/graphics/icons/charcoal.png",
		subgroup = "raw-material",
		order = "b[charcoal]",
		category = "biofarm-mod-smelting",
		energy_required = 36,
		ingredients = {{"bf-woodpulp",40}},
		result = "bf-charcoal",
		result_count = 18,
		enabled = "false"
	},
		-- CHARCOAL 2
	{
		type = "recipe",
		name = "bf-charcoal-2",
		icon = "__Bio_Farm__/graphics/icons/charcoal.png",
		subgroup = "raw-material",
		order = "b[charcoal]",
		category = "biofarm-mod-smelting",
		energy_required = 36,
		ingredients = {{"raw-wood",20}},
		result = "bf-charcoal",
		result_count = 18,
		enabled = "false"
	},
	
	-- COAL --
	{
		type = "recipe",
		name = "bf-coal",
		category = "biofarm-mod-smelting",
		subgroup = "raw-material",
		energy_required = 18,
		ingredients = {{"bf-charcoal",10}},
		result = "coal",
		result_count = 2,
		enabled = "false"
	},

	{
		type = "recipe",
		name = "bf-coal-2",
		category = "biofarm-mod-smelting",
		subgroup = "raw-material",
		energy_required = 18,
		ingredients = {{"bf-charcoal",10}},
		result = "coal",
		result_count = 4,
		enabled = "false"
	},
	-- COKE-COAL --
	{
		type = "recipe",
		name = "bf-coke-coal",
		category = "biofarm-mod-smelting",
		energy_required = 25,
		ingredients = {{"coal",10}},
		result = "bf-coke-coal",
		result_count = 10,
		enabled = "false"
	},
	-- ASH --
	{
		type = "recipe",
		name = "bf-ash",
		category = "biofarm-mod-smelting",
		energy_required = 10,
		ingredients = {{"raw-wood",5}},
		result = "bf-ash",
		result_count = 5,
		enabled = "false"
	},   
		-- ASH 2--
	{
		type = "recipe",
		name = "bf-ash-2",
		category = "biofarm-mod-smelting",
		energy_required = 5,
		ingredients = {{"bf-woodpulp",10}},
		result = "bf-ash",
		result_count = 5,
		enabled = "false"
	},  
	-- CRUSHED STONE
	{
		type = "recipe",
		name = "bf-crushed-stone",
		category = "biofarm-mod-crushing",
		energy_required = 5,
		ingredients = {{"stone",1}},
		result = "bf-crushed-stone",
		result_count = 2,
		enabled = "false"
	},
	-- LIQUID-AIR --
	{
		type = "recipe",
		name = "bf-liquid-air",
		category = "biofarm-mod-biolab",
		subgroup = "intermediate-product",
		energy_required = 10,
		ingredients = {},
		results=
		{
			{type = "fluid", name = "bf-liquid-air", amount = 1}
		},
		enabled = "false"
	},
	-- LIQUID-NITROGEN --
	{
		type = "recipe",
		name = "bf-liquid-nitrogen",
		category = "biofarm-mod-biolab",
		subgroup = "intermediate-product",
		energy_required = 10,
		ingredients ={{type="fluid", name="bf-liquid-air", amount=2}},
		results=
		{
			{type="fluid", name="bf-liquid-nitrogen", amount=1}
		},
		enabled = "false"
	},
	-- LIQUID CO2
	{
		type = "recipe",
		name = "bf-liquid-co2",
		category = "biofarm-mod-biolab",
		subgroup = "intermediate-product",
		energy_required = 10,
		ingredients ={{type="fluid", name="bf-liquid-air", amount=1}},
		results=
		{
			{type="fluid", name="bf-liquid-co2", amount=1}
		},
		enabled = "false"
	},

	-- FILL NITROGEN-BARREL --
	{
		type = "recipe",
		name = "bf-fill-liquid-nitrogen-barrel",
		category = "crafting-with-fluid",
		energy_required = 1,
		subgroup = "intermediate-product",
		order = "b[fill-liquid-nitrogen-barrel]",
		icon = "__Bio_Farm__/graphics/icons/fill-liquid-nitrogen-barrel.png",
		ingredients =
		{
			{type="fluid", name="bf-liquid-nitrogen", amount=25},
			{type="item", name="empty-barrel", amount=1},
		},
		results=
		{
			{type="item", name="bf-liquid-nitrogen-barrel", amount=1}
		},
		enabled = "false"
	},
	-- EMPTY NITROGEN-BARREL --
	{
		type = "recipe",
		name = "bf-empty-liquid-nitrogen-barrel",
		category = "crafting-with-fluid",
		energy_required = 1,
		subgroup = "intermediate-product",
		order = "c[empty-liquid-nitrogen-barrel]",
		icon = "__Bio_Farm__/graphics/icons/empty-liquid-nitrogen-barrel.png",
		ingredients =
		{
		  {type="item", name="bf-liquid-nitrogen-barrel", amount=1}
		},
		results=
		{
			{type="fluid", name="bf-liquid-nitrogen", amount=25},
			{type="item", name="empty-barrel", amount=1}
		},
		enabled = "false"
	},
	-- PHOSPHATE --
	{
		type = "recipe",
		name = "bf-phosphate",
		category = "chemistry",
		energy_required = 5,
		icon = "__Bio_Farm__/graphics/icons/phosphate.png",
		ingredients =
		{
		  {type="item", name="bf-crushed-stone", amount=3},
		  {type="item", name="science-pack-1", amount=1},
		  {type="fluid", name="water", amount=5}
		},
		results=
		{
			{type="item", name="bf-phosphate", amount=1}
		},
		enabled = "false"
	},
	-- POTASSIUM --
	{
		type = "recipe",
		name = "bf-potassium",
		category = "chemistry",
		energy_required = 5,
		icon = "__Bio_Farm__/graphics/icons/potassium.png",
		ingredients =
		{
		  {type="item", name="bf-crushed-stone", amount=3},
		  {type="item", name="science-pack-1", amount=1},
		  {type="fluid", name="water", amount=5}
		},
		results=
		{
			{type="item", name="bf-potassium", amount=1}
		},
		enabled = "false"
	},
	-- FERTILIZER SOLID --
	{
		type = "recipe",
		name = "bf-fertilizer1",
		category = "chemistry",
		energy_required = 125,
		icon = "__Bio_Farm__/graphics/icons/fertilizer_32.png",
		ingredients =
		{
			{type="item", name="bf-phosphate", amount=25},
			{type="item", name="bf-potassium", amount=50},
			{type="item", name="bf-liquid-nitrogen-barrel", amount=1},
			{type="item", name="bf-ash", amount=125}
		},
		results=
		{
			{type="item", name="bf-fertilizer", amount=100}
		},
		enabled = "false"
	},
	-- FERTILIZER LIQUID --
	{
		type = "recipe",
		name = "bf-fertilizer2",
		category = "chemistry",
		energy_required = 5,
		icon = "__Bio_Farm__/graphics/icons/fertilizer_32.png",
		ingredients =
		{
			{type="item", name="bf-phosphate", amount=1},
			{type="item", name="bf-potassium", amount=2},
			{type="fluid", name="bf-liquid-nitrogen", amount=1},
			{type="item", name="bf-ash", amount=6}
		},
		results=
		{
			{type="item", name="bf-fertilizer", amount=5}
		},
		enabled = "false"
	},
	-- BIOMASS --
	{
		type = "recipe",
		name = "bf-biomass-0",
		icon = "__Bio_Farm__/graphics/icons/biomass.png",
		subgroup = "intermediate-product",
		category = "biofarm-mod-bioreactor",
		energy_required = 10,
		ingredients =
		{
			{type="fluid", name="water", amount=10},
			{type="fluid", name="bf-liquid-co2", amount=1},
			{type="item", name="bf-fertilizer", amount=1}
		},
		results=
		{
			{type="fluid", name="bf-biomass", amount=0.5},
			{type="fluid", name="bf-biomass", amount=0.5}
		},
		enabled = "false"
	},
	{
		type = "recipe",
		name = "bf-biomass-1",
		icon = "__Bio_Farm__/graphics/icons/biomass.png",
		subgroup = "intermediate-product",
		category = "biofarm-mod-bioreactor",
		energy_required = 10,
		ingredients =
		{
			{type="fluid", name="water", amount=10},
			{type="fluid", name="bf-biomass", amount=0.99},
			{type="item", name="bf-fertilizer", amount=1}
		},
		results=
		{
			{type="fluid", name="bf-biomass", amount=1},
			{type="fluid", name="bf-biomass", amount=1}
		},
		enabled = "false"
	},
	-- CELLULOSE --
	{
		type = "recipe",
		name = "bf-cellulose",
		category = "biofarm-mod-biolab",
		energy_required = 10,
		ingredients =
		{
			{type="fluid", name="bf-biomass", amount=1.6}
		},
		results=
		{
			{type="item", name="bf-cellulose", amount=1 }
		},
		enabled = "false"
	},
	-- PLASTIC --
	{
		type = "recipe",
		name = "bf-platic",
		category = "biofarm-mod-biolab",
		subgroup = "intermediate-product",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="bf-cellulose", amount=2}
		},
		results=
		{
			{type="item", name="plastic-bar", amount=1}
		},
		enabled = "false"
	},

	{
		type = "recipe",
		name = "bf-cokery",
		ingredients = {{"stone-furnace",1},{"steel-plate",10}},
		result = "bf-cokery",
		result_count = 1,
		enabled = "false"
	},

	{
		type = "recipe",
		name = "bf-stone-crusher",
		ingredients = {{"iron-plate",10},{"steel-plate",10},{"copper-cable",5},{"iron-gear-wheel",5}},
		result = "bf-stone-crusher",
		enabled = "false",
		result_count = 1
	},

	{
		type = "recipe",
		name = "bf-bioreactor",
		ingredients = {{"assembling-machine-1",1},{"steel-plate",5},{"electronic-circuit",5}},
		result = "bf-bioreactor",
		enabled = "false",
		result_count = 1
	},

	{
		type = "recipe",
		name = "bf-biolab",
		ingredients =
		{
			{"steel-plate", 5},
			{"iron-gear-wheel", 5},
			{"electronic-circuit", 5},
			{"pipe", 5}
		},
		result = "bf-biolab",
		enabled = "false",
		result_count = 1
	},


	

}
)


