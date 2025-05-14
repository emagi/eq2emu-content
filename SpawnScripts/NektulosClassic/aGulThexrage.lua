--[[
    Script Name    : SpawnScripts/NektulosClassic/aGulThexrage.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.13 11:05:36
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