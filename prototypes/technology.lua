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
  
    {
      type = "technology",
      name = "bf_fertilizer",
	  icon_size = 128,
      icon = "__Bio_Farm__/graphics/technology/Fertilizer_128.png",
      effects =
      { 
		{
            type = "unlock-recipe",
            recipe = "bf-Logs_Mk2"
        },
		{
            type = "unlock-recipe",
            recipe = "bf-Logs_Mk3"
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
			recipe = "bf-phosphate"
		},
		{
			type = "unlock-recipe",
			recipe = "bf-potassium"
		},
		{
			type = "unlock-recipe",
			recipe = "bf-fertilizer"
		}
      },
      prerequisites = {"bf_bio_farming"},
      unit =
      {
        count = 100,
        ingredients =
        {
          {"science-pack-1", 2},
		  {"science-pack-1", 1}
        },
        time = 20
      }
  }
  
  
})