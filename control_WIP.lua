require "defines"
require "util"
require "libs.util_ext"


---------------------------------------------


script.on_init(function()
    init_bio_farm()
end)

script.on_load(function()
    init_bio_farm()
end)

function init_bio_farm()
    script.on_event(defines.events.on_built_entity,On_Built)
    script.on_event(defines.events.on_robot_built_entity, On_Built)
    script.on_event(defines.events.on_preplayer_mined_item, On_Remove_Mine)
    script.on_event(defines.events.on_robot_pre_mined, On_Remove_Mine)
    script.on_event(defines.events.on_entity_died, On_Remove_Death)
end


---------------------------------------------

function On_Built(event)
    local entity = event.created_entity
    if entity and entity.name == "bf_bio_farm" then
        local l_name = "bf_medium-electric-pole_for_Bio_Farm"
        local l_surface = entity.surface
        local l_force = entity.force
        local l_position = entity.position
        local l_farm = entity
        local l_pole = l_surface.create_entity{name = l_name, position = l_position, force = l_force}
        l_farm.minable = false
        l_farm.destructible = false

        group_entities(cantor(l_position.x,l_position.y), { l_farm, l_pole })
    end
end



function On_Remove_Mine(event)
    local entity = event.entity
    if entity and entity.name == "powered-wall-pole" then
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
function On_Built_Mine(event)
     
    --- Bio Farm has been built
	if event.created_entity.name == "bf_bio_farm" then
		local surface = event.created_entity.surface
		local force = event.created_entity.force
		surface.create_entity({name = "bf_medium-electric-pole_for_Bio_Farm", position = event.created_entity.position, force = force})
		surface.create_entity({name = "bf_light_for_Bio_Farm", position = event.created_entity.position, force = force})
		surface.create_entity({name = "bf_solar-panel_for_Bio_Farm", position = event.created_entity.position, force = force})
	end
	
	
	if event.created_entity.name == "bf-cokery-dummy" then
		local surface = event.created_entity.surface
		local force = event.created_entity.force
		surface.create_entity({name = "bf-cokery", position = event.created_entity.position, force = force})
		event.created_entity.destroy()
	end
end
 
---------------------------------------------
function On_Remove(event)
	
	--- Bio Farm has been removed
   	if event.entity.name == "bf_bio_farm" then
		
		res2 = game.get_surface(1).find_entities_filtered{name="bf_medium-electric-pole_for_Bio_Farm", area=GetArea(event.entity.position, 0.5)}
		res = game.get_surface(1).find_entities_filtered{name="bf_light_for_Bio_Farm", area=GetArea(event.entity.position, 0.5)}
		res3 = game.get_surface(1).find_entities_filtered{name="bf_solar-panel_for_Bio_Farm", area=GetArea(event.entity.position, 0.5)}

		if #res then
         -- If we've found it, destroy it.
         res[1].destroy()
		end
		if #res2 then
         -- If we've found it, destroy it.
         res2[1].destroy()
		end
		if #res3 then
         -- If we've found it, destroy it.
         res3[1].destroy()
		end
	end

end

function GetArea(pos, radius)
   -- This calculates a box of the given radius around the given position.
   return {{x = pos.x - radius, y = pos.y - radius}, {x = pos.x + radius, y = pos.y + radius}}
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

