--[[
    Script Name    : SpawnScripts/FrostfangSea/ablizzardmatron.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.30 03:07:00
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