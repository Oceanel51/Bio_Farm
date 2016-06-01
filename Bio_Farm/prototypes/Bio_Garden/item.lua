
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
    type= "item",
    name= "bf_light_for_Bio_Garden",
    icon = "__base__/graphics/icons/small-lamp.png",
    flags = {"hidden"},
    subgroup = "production-machine",
    place_result = "bf_light_for_Bio_Garden",
    stack_size= 10,
	enable = false,
  },
  
  {
    type = "item",
    name = "Purified_Air",
    icon = "__Bio_Farm__/graphics/icons/Clean_Air2.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "raw-material",
    order = "Purified_Air",
    stack_size = 100
  },
  
  
  
  })