-----------------------
--Cross Mod Detection--
-----------------------
NEConfig.mod = {}


--Detect N.E. Buildings
if data.raw["radar"]["AlienControlStation"] ~= nil and data.raw["assembling-machine"]["Alien_Hatchery"] ~= nil then
	NEConfig.mod.NEBuildings=true
else 
	NEConfig.mod.NEBuildings=false
end
