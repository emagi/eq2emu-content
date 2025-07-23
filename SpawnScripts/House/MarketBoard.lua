--[[
    Script Name    : SpawnScripts/House/MarketBoard.lua
    Script Author  : image
    Script Date    : 2025.07.22 11:07:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddPrimaryEntityCommand(nil, NPC, "Market", 5)
    SendUpdateDefaultCommand(NPC, 5.0, "Market", nil)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Command)
	if Command == 'Market' then
	    ShowShopWindow(Spawn, NPC)	    
	end	    
end