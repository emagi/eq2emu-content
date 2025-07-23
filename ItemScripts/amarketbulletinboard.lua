--[[
    Script Name    : ItemScripts/amarketbulletinboard.lua
    Script Author  : image
    Script Date    : 2025.07.22 11:07:46
    Script Purpose : 
                   : 
--]]
function placed(Item, Player, Spawn)
   SetSpawnHouseScript(Spawn, "SpawnScripts/House/MarketBoard.lua") 
end