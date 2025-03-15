--[[
    Script Name    : SpawnScripts/Zek/aSulloncenturion.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.13 04:03:41
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Deathfist(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end