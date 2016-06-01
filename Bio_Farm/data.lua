--- Bio Farm
require("prototypes.Bio_Farm.entities")
require("prototypes.Bio_Farm.item")
require("prototypes.Bio_Farm.recipe")
require("prototypes.Bio_Farm.liquids")
require("prototypes.Bio_Farm.recipe-categories")


--- Bio Solar Farm
require("prototypes.Bio_Solar_Farm.entities")
require("prototypes.Bio_Solar_Farm.item")
require("prototypes.Bio_Solar_Farm.recipe")


-- Bio Garden
require("prototypes.Bio_Garden.entities")
require("prototypes.Bio_Garden.item")
require("prototypes.Bio_Garden.recipe")

-- Tech
require("prototypes.technology")


NEConfig = {}
require "libs.detectmod" --Detects if NE Buildings exist


------- DyTech Support
if data.raw["item"]["rubber-seed"] ~= nil then
require("prototypes.Bio_Farm.dytech_recipe")




	function add_technology_recipe (technology, recipe)
	  if data.raw.technology[technology] and data.raw.recipe[recipe] then
		local addit = true
		if not data.raw.technology[technology].effects then
		  data.raw.technology[technology].effects = {}
		end
		for i, effect in pairs(data.raw.technology[technology].effects) do
		  if effect.type == "unlock-recipe" and effect.recipe == recipe then addit = false end
		end
		if addit then table.insert(data.raw.technology[technology].effects,{type = "unlock-recipe", recipe = recipe}) end
	  end
	end

	
	add_technology_recipe ("bf_bio_farming", "resin")
	add_technology_recipe ("bf-fertilizer", "resin_Mk2")
	add_technology_recipe ("bf_bio_farming", "sulfur-wood")
	add_technology_recipe ("bf-fertilizer", "sulfur-wood_Mk2")

	
	
	if NEConfig.mod.NEBuildings then
		add_technology_recipe ("bf-advanced-biotechnology", "resin_Mk3")
		add_technology_recipe ("bf-advanced-biotechnology", "sulfur-wood_Mk3")
		table.insert(data.raw.recipe["resin_Mk3"].ingredients,{type="item", name="bf-adv-fertilizer", amount=5})
		table.insert(data.raw.recipe["sulfur-wood_Mk3"].ingredients,{type="item", name="bf-adv-fertilizer", amount=5})
	end

end