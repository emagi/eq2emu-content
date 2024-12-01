--[[
    Script Name    : SpawnScripts/IsleRefuge1/asawtoothshark.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.17 12:09:26
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
end

function respawn(NPC)
	spawn(NPC)
end

	
	
	
	
	
	
	
	