--[[
    Script Name    : SpawnScripts/FrostfangSea/TheRisenRyGorrConqueror.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.30 07:07:48
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end