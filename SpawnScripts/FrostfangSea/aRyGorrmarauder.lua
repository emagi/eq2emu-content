--[[
    Script Name    : SpawnScripts/FrostfangSea/aRyGorrmarauder.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.30 04:07:37
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end