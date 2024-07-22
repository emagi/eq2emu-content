--[[
    Script Name    : SpawnScripts/SummonerPets/BubblesGuard.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.22 05:04:45
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Guard(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end