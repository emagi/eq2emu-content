--[[
    Script Name    : SpawnScripts/NektulosClassic/aGulThexravager.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.24 07:04:05
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end