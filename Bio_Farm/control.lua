require "defines"
require "util"
require "libs/util_ext"


script.on_init(function()
    init_bio_farm()
end)

script.on_load(function()
    init_bio_farm()
end)

function init_bio_farm()
    script.on_event(defines.events.on_built_entity, On_Built)
    script.on_event(defines.events.on_robot_built_entity, On_Built)
    script.on_event(defines.events.on_preplayer_mined_item, On_Remove)
    script.on_event(defines.events.on_robot_pre_mined, On_Remove)
    --script.on_event(defines.events.on_entity_died, On_Remove)
	script.on_event(defines.events.on_entity_died, On_Death)
end

---------------------------------------------
function On_Built(event)
    
    --- Bio Farm has been built
	local entity = event.created_entity
	if entity and entity.name == "bf_bio_farm" then
		local surface = entity.surface
		local force = entity.force
		local position = entity.position		   
		local b_farm = entity
		local pole_name = "bf_medium-electric-pole_for_Bio_Farm"  
		local panel_name = "bf_solar-panel_for_Bio_Farm"  
		local lamp_name = "bf_light_for_Bio_Farm"      
		  
		local create_pole = surface.create_entity({name = pole_name, position = position, force = force})
		local create_panel = surface.create_entity({name = panel_name, position = position, force = force})
		local create_lamp = surface.create_entity({name = lamp_name, position = position, force = force})
		  
		create_pole.minable = false
		create_pole.destructible = false
		create_panel.minable = false
		create_panel.destructible = false
		create_lamp.minable = false
		create_lamp.destructible = false
		
		group_entities(cantor(position.x,position.y), { b_farm, create_pole, create_panel, create_lamp })
		  

	end

end

--[[
---------------------------------------------
function On_Remove(event)
	
	--- Bio Farm has been removed
   	if event.entity.name == "bf_bio_farm" then
		
		res1 = game.get_surface(1).find_entities_filtered{name="bf_medium-electric-pole_for_Bio_Farm", area=GetArea(event.entity.position, 0.8)}
		res2 = game.get_surface(1).find_entities_filtered{name="bf_light_for_Bio_Farm", area=GetArea(event.entity.position, 0.8)}
		res3 = game.get_surface(1).find_entities_filtered{name="bf_solar-panel_for_Bio_Farm", area=GetArea(event.entity.position, 0.8)}


         res1[1].destroy()
         res2[1].destroy()
         res3[1].destroy()

	end

end
]]

---------------------------------------------
function On_Remove(event)
	
	--- Bio Farm has been removed
	local entity = event.entity
   	if entity and entity.name == "bf_bio_farm" then
		local pos_hash = cantor(entity.position.x,entity.position.y)
        local entity_group = getGroup_entities(pos_hash)
        if entity_group then
            for ix, vx in ipairs(entity_group) do
                if vx == entity then
                    --vx.destroy()
                else
                    vx.destroy()
                end
            end
        end
        ungroup_entities(pos_hash)
	end

end

---------------------------------------------
function On_Death(event)
	
	--- Bio Farm has been destroyed
	local entity = event.entity
   	if entity and entity.name == "bf_bio_farm" then
		local pos_hash = cantor(entity.position.x,entity.position.y)
        local entity_group = getGroup_entities(pos_hash)
        if entity_group then
            for ix, vx in ipairs(entity_group) do
                if vx == entity then
                    --vx.destroy()
                else
                    --vx.die()
					vx.destroy()
                end
            end
        end
        ungroup_entities(pos_hash)
	end

end




--- Utils
function group_entities(entity_list)
    return group_entities(nil, entity_list)
end

function group_entities(entity_groupid, entity_list)
    return group("entities", entity_groupid, entity_list)
end

function getGroup_entities(entity_groupid)
    return getGroup("entities", entity_groupid)
end

function getGroup_entities_by_member(entity_id)
    return getGroup_byMember("entities", entity_id)
end

function ungroup_entities(entity_groupid)
    return ungroup("entities", entity_groupid)
end
