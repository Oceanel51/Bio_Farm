
NEConfig = {}
require "libs.detectmod" --Detect sif NE Buildings exist
data.raw.item["raw-wood"].stack_size = 200

--data.raw["lamp"]["bf_light_for_Bio_Farm"].minable = false
--data.raw["lamp"]["bf_light_for_Bio_Farm"].destructible = false

--data.raw["electric-pole"]["bf_medium-electric-pole_for_Bio_Farm"].minable = false
--data.raw["electric-pole"]["bf_medium-electric-pole_for_Bio_Farm"].destructible = false

--data.raw["solar-panel"]["bf_solar-panel_for_Bio_Farm"].minable = false
--data.raw["solar-panel"]["bf_solar-panel_for_Bio_Farm"].destructible = false



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
