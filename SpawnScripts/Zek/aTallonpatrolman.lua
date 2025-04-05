--[[
    Script Name    : SpawnScripts/Zek/aTallonpatrolman.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.04.04 06:04:45
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Deathfist(NPC)
    OrcArmorCommon(NPC)
    RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end