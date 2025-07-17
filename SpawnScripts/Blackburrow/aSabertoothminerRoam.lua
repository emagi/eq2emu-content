--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothminerRoam.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.16 04:07:02
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    SpawnSet(NPC, "visual_state", 0)
    RandomMovement(NPC, Spawn, 5, -5, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end