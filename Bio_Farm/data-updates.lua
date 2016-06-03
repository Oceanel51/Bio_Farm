
--- Help Files
require ("scripts.detectmod") --Detect supported Mods, currently DyTechWar and Bob's Enemies and others
require ("scripts.item-functions") -- From Bob's Libary 
require ("scripts.recipe-functions") -- From Bob's Libary 
require ("scripts.technology-functions") -- From Bob's Libary 


---- Inrease Wood Stack Size
data.raw.item["raw-wood"].stack_size = 400


--- Got tierd of reaching limits...
--[[
if data.raw.player.player.build_distance < 24 then
	data.raw.player.player.build_distance = 24
	data.raw.player.player.reach_distance = 20
	data.raw.player.player.reach_resource_distance = 20
	data.raw.player.player.drop_item_distance = 20
end 
]] 

--- Adds Solar Farm to solar-energy Tech
if data.raw.technology["bob-solar-energy-2"] then
	bobmods.lib.add_technology_recipe ("bob-solar-energy-2", "bf_Bio_Solar_Farm")
	bobmods.lib.replace_recipe_item("bf_Bio_Solar_Farm", "solar-panel", "solar-panel-large")
else
	bobmods.lib.add_technology_recipe ("solar-energy", "bf_Bio_Solar_Farm")
end	

	
	
------- Adds a Mk3 recipe for wood if you're playing with Natural Evolution Buildings
if BI_Config.mod.NEBuildings then


	bobmods.lib.add_technology_recipe ("bf-advanced-biotechnology", "bf-Logs_Mk3")
	bobmods.lib.add_technology_recipe ("bf-advanced-biotechnology", "bf-adv-fertilizer")
	table.insert(data.raw.recipe["bf-Logs_Mk3"].ingredients,{type="item", name="bf-adv-fertilizer", amount=5})
	table.insert(data.raw.recipe["bf-adv-fertilizer"].ingredients,{type="fluid", name="NE_enhanced-nutrient-solution", amount=50})

	--- Adds Clean Air 2 recipe
	bobmods.lib.add_technology_recipe ("bf-advanced-biotechnology", "Clean_Air2")
	table.insert(data.raw.recipe["Clean_Air2"].ingredients,{type="item", name="bf-adv-fertilizer", amount=1})

---- Add Bio Fuel
	require("prototypes.Bio_Fuel.fluid")
	require("prototypes.Bio_Fuel.recipe")
	bobmods.lib.add_technology_recipe ("bf-advanced-biotechnology", "Bio_Fuel")
	bobmods.lib.add_technology_recipe ("bf-advanced-biotechnology", "Fuel_Conversion")
	table.insert(data.raw.recipe["Bio_Fuel"].ingredients,{type="fluid", name="NE_revitalization-solution", amount=20})
	
end


------- DyTech Support
if BI_Config.mod.DyTechCore then

require("prototypes.Bio_Farm.dytech_recipe")
	
	bobmods.lib.add_technology_recipe ("bf_bio_farming", "resin")
	bobmods.lib.add_technology_recipe ("bf-fertilizer", "resin_Mk2")
	bobmods.lib.add_technology_recipe ("bf_bio_farming", "sulfur-wood")
	bobmods.lib.add_technology_recipe ("bf-fertilizer", "sulfur-wood_Mk2")

	
	--- If you're using NE Buildings, add an advanced recipe
	if BI_Config.mod.NEBuildings then
		bobmods.lib.add_technology_recipe ("bf-advanced-biotechnology", "resin_Mk3")
		bobmods.lib.add_technology_recipe ("bf-advanced-biotechnology", "sulfur-wood_Mk3")
		table.insert(data.raw.recipe["resin_Mk3"].ingredients,{type="item", name="bf-adv-fertilizer", amount=5})
		table.insert(data.raw.recipe["sulfur-wood_Mk3"].ingredients,{type="item", name="bf-adv-fertilizer", amount=5})
	end

end







	