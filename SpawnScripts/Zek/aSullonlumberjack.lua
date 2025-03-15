--[[
    Script Name    : SpawnScripts/Zek/aSullonlumberjack.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.13 04:03:31
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Deathfist(NPC)
    OrcArmorCommon(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end