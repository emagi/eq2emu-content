--[[
    Script Name    : SpawnScripts/Blackburrow/acrimsonconstrictorRoam6.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.25 07:07:42
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 6, -6, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end