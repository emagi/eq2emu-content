--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothtacticianRoam.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.07 07:08:43
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 4, -4, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end