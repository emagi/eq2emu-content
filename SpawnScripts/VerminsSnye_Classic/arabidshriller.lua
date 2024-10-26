--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/arabidshriller.lua
    Script Author  : Neifion
    Script Date    : 2024.04.24 10:04:39
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 2, -2, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
