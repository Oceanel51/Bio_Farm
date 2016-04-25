
game.reload_script()


for index, force in pairs(game.forces) do
  local technologies = force.technologies;
  local recipes = force.recipes;

  force.reset_recipes()
  force.reset_technologies()

  if technologies["bf_bio_farming"].researched then
    recipes["bf-seedling"].enabled = true
    recipes["bf-seedling"].reload()
    recipes["bf-Logs_Mk1"].enabled = true
    recipes["bf-Logs_Mk1"].reload()
    recipes["bf_bio_farm"].enabled = true
    recipes["bf_bio_farm"].reload()
	recipes["Bio_Garden"].enabled = true
    recipes["Bio_Garden"].reload()
	recipes["Clean_Air"].enabled = true
    recipes["Clean_Air"].reload()
	end
	

	
	
  if technologies["bf-fertilizer"].researched then
    recipes["bf-Logs_Mk2"].enabled = true
    recipes["bf-Logs_Mk2"].reload()
	end
	
	
end
