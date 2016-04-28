
NEConfig = {}
require "libs.detectmod" --Detect sif NE Buildings exist
data.raw.item["raw-wood"].stack_size = 200


--- Got tierd of reaching limits...
--[[
if data.raw.player.player.build_distance < 24 then
	data.raw.player.player.build_distance = 24
	data.raw.player.player.reach_distance = 20
	data.raw.player.player.reach_resource_distance = 20
	data.raw.player.player.drop_item_distance = 20
end 
]] 

------- Adds a Mk3 recipe for wood if you're playing with Natural Evolution Buildings
if NEConfig.mod.NEBuildings then



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

	add_technology_recipe ("bf-advanced-biotechnology", "bf-Logs_Mk3")
	add_technology_recipe ("bf-advanced-biotechnology", "bf-adv-fertilizer")
	table.insert(data.raw.recipe["bf-Logs_Mk3"].ingredients,{type="item", name="bf-adv-fertilizer", amount=5})
	table.insert(data.raw.recipe["bf-adv-fertilizer"].ingredients,{type="fluid", name="NE_enhanced-nutrient-solution", amount=50})

end
