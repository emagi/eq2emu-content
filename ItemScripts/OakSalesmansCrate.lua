--[[
    Script Name    : ItemScripts/OakSalesmansCrate.lua
    Script Author  : image
    Script Date    : 2025.07.23 07:07:17
    Script Purpose : 
                   : 
--]]

function placed(Item, Player, Spawn)
   SetSpawnHouseScript(Spawn, "SpawnScripts/House/HouseShop.lua")
   SetHouseCharacterID(Spawn, 0)
end