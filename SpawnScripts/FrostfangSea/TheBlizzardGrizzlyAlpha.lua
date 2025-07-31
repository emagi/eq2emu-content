--[[
    Script Name    : SpawnScripts/FrostfangSea/TheBlizzardGrizzlyAlpha.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.30 07:07:20
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