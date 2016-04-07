
NEConfig = {}


require "scripts.detectmod" --Detect supported Mods, currently DyTechWar and Bob's Enemies and others

data.raw.item["raw-wood"].stack_size = 200





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
	table.insert(data.raw.recipe["bf-adv-fertilizer"].ingredients,{type="item", name="small-alien-artifact", amount=50})

end
