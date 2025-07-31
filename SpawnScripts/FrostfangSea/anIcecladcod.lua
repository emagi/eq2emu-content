--[[
    Script Name    : SpawnScripts/FrostfangSea/anIcecladcod.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.30 04:07:57
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end