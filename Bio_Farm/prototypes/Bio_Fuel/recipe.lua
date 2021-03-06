

data:extend({

  ---- Bio Fuel
  {
    type = "recipe",
    name = "Bio_Fuel",
    --category = "chemistry",
	category = "biofarm-mod-bioreactor",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {type="item", name="bf-seedling", amount=25},
      --{type="fluid", name="NE_revitalization-solution", amount=20} <-- Will be added if you are using NE Buildings
    },
    results=
    {
      {type="fluid", name="Bio_Fuel", amount=10},
    },
    --subgroup = "Evolution-fluids"
	subgroup = "fluid-recipes",
	order = "a[oil-processing]-z[Bio_Fuel]"
  },
  
  {
    type = "recipe",
    name = "Fuel_Conversion",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
		{type="fluid", name="Bio_Fuel", amount=8},
		{type="fluid", name="crude-oil", amount=2},
    },
    results=
    {
		{type="fluid", name="light-oil", amount=3},  
		{type="fluid", name="heavy-oil", amount=2},
    
    },
    icon = "__Bio_Farm__/graphics/icons/bio_conversion.png",
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-y[Fuel_Conversion]"
  },

  
})