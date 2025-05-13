--[[
    Script Name    : SpawnScripts/NektulosClassic/afirelightshriller.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.12 07:05:30
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