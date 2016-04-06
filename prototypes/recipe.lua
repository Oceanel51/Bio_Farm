data:extend({
	--- Seedling
	{
    type = "recipe",
    name = "bf-seedling",
    enabled = "false",
    energy_required = 0.5,
    ingredients = {{"raw-wood",1}},
    result = "bf-seedling"
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
    category = "bf-mod-dummy",
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
	
		--- Raw Wood from Water & Science-Pack-1
	{
    type = "recipe",
    name = "bf-Logs_Mk2",
    category = "bf-mod-dummy",
    enabled = "false",
    energy_required = 220,
	ingredients =
    {
      {type="item", name="bf-seedling", amount=10},     
	  {type="item", name="science-pack-1", amount=10},     
      {type="fluid", name="water", amount=100},
    },
    result_count = 45,
    result = "raw-wood"
	},
	
		
		--- Raw Wood from Water & Science-Pack-2
	{
    type = "recipe",
    name = "bf-Logs_Mk3",
    category = "bf-mod-dummy",
    enabled = "false",
    energy_required = 200,
	ingredients =
    {
      {type="item", name="bf-seedling", amount=10},     
	  {type="item", name="science-pack-2", amount=5},     
      {type="fluid", name="water", amount=100},
    },
    result_count = 100,
    result = "raw-wood"
	},
	
	
	---- Stone Crusher
	{
		type = "recipe",
		name = "bf-stone-crusher",
		category = "bf-mod-dummy",
		ingredients = {{"iron-plate",10},{"steel-plate",10},{"copper-cable",5},{"iron-gear-wheel",5}},
		result = "bf-stone-crusher",
		enabled = "false",
		result_count = 1
	},
	
		-- CRUSHED STONE
	{
		type = "recipe",
		name = "bf-crushed-stone",
		category = "bf-mod-dummy",
		energy_required = 5,
		icon = "__Bio_Farm__/graphics/icons/crushed-stone.png",
		ingredients = {{"stone",1}},
		result = "bf-crushed-stone",
		result_count = 2,
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
		name = "bf-fertilizer",
		category = "chemistry",
		energy_required = 125,
		icon = "__Bio_Farm__/graphics/icons/fertilizer_32.png",
		ingredients =
		{
			{type="item", name="bf-phosphate", amount=25},
			{type="item", name="bf-potassium", amount=50}
			--{type="item", name="tf-ash", amount=125}
		},
		results=
		{
			{type="item", name="bf-fertilizer", amount=100}
		},
		enabled = "false"
	},
	
	
})