data:extend({



  {
    type = "item",
    name = "bf_Bio_Solar_Farm",
    icon = "__Bio_Farm__/graphics/icons/solar-panel.png", 
	flags= { "goes-to-quickbar" },
    subgroup = "energy",
    place_result = "bf_Bio_Solar_Farm",
    stack_size = 10,
	--enable = false,
  },

  {
  type= "item",
    name= "bf_Bio_Solar_Farm_Image",
    icon = "__Bio_Farm__/graphics/icons/solar-panel.png",
    flags = {"hidden"},
    subgroup = "energy",
    place_result = "bf_Bio_Solar_Farm_Image",
    stack_size= 10,
	enable = false,
  },


})
