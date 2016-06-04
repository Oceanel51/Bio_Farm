
if not BI_Config then BI_Config = {} end
if not BI_Config.mod then BI_Config.mod = {} end

if not bobmods then bobmods = {} end
if not bobmods.lib then bobmods.lib = {} end

--- Help Files
require ("scripts.detectmod") --Detect supported Mods, currently DyTechWar and Bob's Enemies and others
require ("scripts.item-functions") -- From Bob's Libary 
require ("scripts.recipe-functions") -- From Bob's Libary 
require ("scripts.technology-functions") -- From Bob's Libary 

--- Bio Farm
require("prototypes.Bio_Farm.entities")
require("prototypes.Bio_Farm.item")
require("prototypes.Bio_Farm.recipe")
require("prototypes.Bio_Farm.liquids")
require("prototypes.Bio_Farm.recipe-categories")
require("prototypes.Bio_Farm.pipeConnectors")

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