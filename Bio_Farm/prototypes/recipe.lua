data:extend({
	--- Seedling
	{
		type = "recipe",
		name = "bf-seedling",
		enabled = "false",
		subgroup = "raw-material",
		energy_required = 0.5,
		icon = "__Bio_Farm__/graphics/icons/Seedling.png",
		ingredients = {{"raw-wood",1}},
		results=
		{
		  {type="item", name="bf-seedling", amount=2},
		  {type="item", name="bf-woodpulp", amount=1}
		},
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
		energy_required = 400,
		ingredients =
		{
		  {type="item", name="bf-seedling", amount=20},     
		  {type="fluid", name="water", amount=100},
		},
		result_count = 40,
		result = "raw-wood"
	},
	
		--- Raw Wood from Water & Fertilizer
	{
    type = "recipe",
    name = "bf-Logs_Mk2",
    category = "biofarm-mod-dummy",
    enabled = "false",
    energy_required = 300,
	ingredients =
    {
      {type="item", name="bf-seedling", amount=30},     
	  {type="item", name="bf-fertilizer", amount=10},     
      {type="fluid", name="water", amount=100},
    },
    result_count = 60,
    result = "raw-wood"
	},
	
		
		--- Raw Wood from Fertilizer & NE_enhanced-nutrient-solution (Natural Evolution Mod)
	{
    type = "recipe",
    name = "bf-Logs_Mk3",
    category = "biofarm-mod-dummy",
    enabled = "false",
    energy_required = 200,
	ingredients =
    {
      {type="item", name="bf-seedling", amount=50},     
      {type="fluid", name="water", amount=100},
	  --{type="item", name="bf-adv-fertilizer", amount=5},     -- Will be added if you have Natural Evolution Buildings Mod installed.
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
			--{type="fluid", name="NE_enhanced-nutrient-solution", amount=5}, -- Will be added if you have Natural Evolution Buildings Mod installed.
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
	
	-- COAL 1 --
	{
		type = "recipe",
		name = "bf-coal",
		category = "biofarm-mod-smelting",
		subgroup = "raw-material",
		energy_required = 18,
		ingredients = {{"bf-charcoal",12}},
		result = "coal",
		result_count = 2,
		enabled = "false"
	},
	-- COAL 2 --
	{
		type = "recipe",
		name = "bf-coal-2",
		category = "biofarm-mod-smelting",
		subgroup = "raw-material",
		energy_required = 18,
		ingredients = {{"bf-charcoal",12}},
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
		ingredients = {{"coal",15}},
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
		result_count = 3,
		enabled = "false"
	},
	-- LIQUID-AIR --
	{
		type = "recipe",
		name = "bf-liquid-air",
		category = "chemistry",
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
		category = "chemistry",
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
		category = "chemistry",
		subgroup = "intermediate-product",
		energy_required = 10,
		ingredients ={{type="fluid", name="bf-liquid-air", amount=1}},
		results=
		{
			{type="fluid", name="bf-liquid-co2", amount=1}
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
	-- FERTILIZER--
{
		type = "recipe",
		name = "bf-fertilizer",
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
		category = "chemistry",
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
		category = "chemistry",
		subgroup = "raw-material",
		order = "g[plastic-bar]",
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

})



--- Bio Gardens
data:extend({



	{
		type = "recipe",
		name = "Bio_Garden",
		icon = "__Bio_Farm__/graphics/icons/bio_garden_icon.png",
		energy_required = 10.0,
		enabled = "false",
		ingredients =
		{
		  {"stone-wall", 12},
		  {"bf-crushed-stone", 50},
		  {"bf-seedling", 50}
		},
		result = "Bio_Garden"
	},
 
 

	{
    type = "recipe",
    name = "Clean_Air",
    category = "clean-air",
    enabled = "false",
    --hidden = "true",
    energy_required = 40,
    ingredients =
    {
      {type="fluid", name="water", amount=50},
	  {type="item", name="bf-fertilizer", amount=1}  
    },
    results=
    {
      {type="item", name="Purified_Air", amount=1, probability=0},
    },
    icon = "__Bio_Farm__/graphics/icons/clean-air.png",
    order = "clean-air"
	},
		  
  }
)

