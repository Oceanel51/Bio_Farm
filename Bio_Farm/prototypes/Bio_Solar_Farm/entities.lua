
require ("util")


data:extend({
	------- Bio Solar Farm

  ------- Bio Solar Farm Image

  {
    type = "lamp",
    name = "bf_Bio_Solar_Farm_Image",
    icon = "__Bio_Farm__/graphics/icons/solar-panel.png",
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-repairable"},
	selectable_in_game = false,
    max_health = 1,
    collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
	energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "1kW",
	light = {intensity = 0, size = 0},
    picture_off =
    {
      filename = "__Bio_Farm__/graphics/entities/bio_solar_farm/Bio_Solar_Farm_Off.png",
      priority = "high",
      width = 208,
      height = 192,
      frame_count = 1,
      direction_count = 1,
	  scale = 3/2,
	  --shift = {0.75, 0},
    },
    picture_on =
    {
      filename = "__Bio_Farm__/graphics/entities/bio_solar_farm/Bio_Solar_Farm_On.png",
      priority = "high",
      width = 208,
      height = 192,
      frame_count = 1,
      direction_count = 1,
	  scale = 3/2,
	  --shift = {0.75, 0},
    },
	},
  ------- Bio Farm Solar Panel
  {
    type = "solar-panel",
    name = "bf_Bio_Solar_Farm",
    icon = "__Bio_Farm__/graphics/icons/solar-panel.png",
	flags = {"placeable-neutral", "player-creation", "not-repairable"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "bf_Bio_Solar_Farm"},
    max_health = 100,
    resistances = {{type = "fire", percent = 100}},
	collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Bio_Farm__/graphics/entities/bio_solar_farm/Bio_Solar_Farm_On.png",
      priority = "low",
      width = 208,
      height = 192,
      frame_count = 1,
      direction_count = 1,
	  scale = 3/2,
	  --shift = {0.75, 0},
    },
    production = "1000kW"
  },
  
  })
 