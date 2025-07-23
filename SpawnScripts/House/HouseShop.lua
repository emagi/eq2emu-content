--[[
    Script Name    : SpawnScripts/House/HouseShop.lua
    Script Author  : image
    Script Date    : 2025.07.23 07:07:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetHouseCharacterID(NPC, 0)
    AddPrimaryEntityCommand(nil, NPC, "Shop", 5)
    SendUpdateDefaultCommand(NPC, 5.0, "Shop", nil)
end

function respawn(NPC)
    spawn(NPC)
end

function casted_on(NPC, Spawn, Command)
    if Command == 'Shop' then
        ShowHouseShopMerchant(NPC, Spawn)        
    end        
end
