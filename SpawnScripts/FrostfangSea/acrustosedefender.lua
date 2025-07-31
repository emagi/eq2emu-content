--[[
    Script Name    : SpawnScripts/FrostfangSea/acrustosedefender.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.30 03:07:26
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