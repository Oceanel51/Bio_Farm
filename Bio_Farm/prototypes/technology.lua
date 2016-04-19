data:extend({
  
  {
      type = "technology",
      name = "bf_bio_farming",
	  icon_size = 128,
      icon = "__Bio_Farm__/graphics/technology/Bio_Farm_Tech_128.png",
      effects =
      {
        {
            type = "unlock-recipe",
            recipe = "bf-seedling"
        },
        {
            type = "unlock-recipe",
            recipe = "bf-Logs_Mk1"
        },

        {
            type = "unlock-recipe",
            recipe = "bf_bio_farm"
        }
      },
      prerequisites = {"optics"},
      unit =
      {
        count = 20,
        ingredients =
        {
          {"science-pack-1", 1}
        },
        time = 20
      }
  },
 
 
})


--- Imported from Tree Farm Mod
data:extend(
{
	{
		type = "technology",
		name = "bf-coal-processing",
		icon_size = 128,
		icon = "__Bio_Farm__/graphics/technology/Coal_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "bf-charcoal"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-charcoal-2"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-coke-coal"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-ash"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-ash-2"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-cokery"
			}
		},
		prerequisites = {
			"advanced-material-processing"
		},
		unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 1}
			},
			time = 30
		}
	},

	{
		type = "technology",
		name = "bf-coal-processing-2",
		icon_size = 128,
		icon = "__Bio_Farm__/graphics/technology/Coal_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "bf-coal"
			},
		},
		prerequisites = {
			"bf-coal-processing"
		},
		unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1}
			},
			time = 30
		}
	},

	{
		type = "technology",
		name = "bf-coal-processing-3",
		icon_size = 128,
		icon = "__Bio_Farm__/graphics/technology/Coal_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "bf-coal-2"
			},
		},
		prerequisites = {
			"bf-coal-processing-2"
		},
		unit = {
			count = 50,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 30
		}
	},

	{
		type = "technology",
		name = "bf-fertilizer",
		icon_size = 128,
		icon = "__Bio_Farm__/graphics/technology/Fertilizer_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "bf-biolab"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-stone-crusher"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-crushed-stone"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-liquid-air"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-liquid-nitrogen"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-fill-liquid-nitrogen-barrel"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-empty-liquid-nitrogen-barrel"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-phosphate"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-potassium"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-fertilizer1"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-fertilizer2"
			},
			{
            type = "unlock-recipe",
            recipe = "bf-Logs_Mk2"
			}

		},
		prerequisites = {
			"fluid-handling",
			"bf_bio_farming"
		},
		unit = {
			count = 200,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 1}
			},
			time = 30
		}
	},

	{
		type = "technology",
		name = "bf-advanced-biotechnology",
		icon_size = 128,
		icon = "__Bio_Farm__/graphics/technology/Biomass_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "bf-bioreactor"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-biomass-0"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-biomass-1"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-liquid-co2"
			},
			{
				type = "unlock-recipe",
				recipe = "bf-cellulose"
			}

		},
		prerequisites = {
			"bf-fertilizer"
		},
		unit = {
			count = 150,
			ingredients = {
				{"science-pack-1", 4},
				{"science-pack-2", 2}
			},
			time = 30
		}
	},

	{
		type = "technology",
		name = "bf-organic-plastic",
		icon_size = 128,
		icon = "__Bio_Farm__/graphics/technology/Cellulose_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "bf-platic"
			}
		},
		prerequisites = {
			"bf-advanced-biotechnology"
		},
		unit = {
			count = 150,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 30
		}
	},

})

