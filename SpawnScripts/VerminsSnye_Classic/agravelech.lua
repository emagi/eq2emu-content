--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/agravelech.lua
    Script Author  : Neifion
    Script Date    : 2024.04.26 06:04:28
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