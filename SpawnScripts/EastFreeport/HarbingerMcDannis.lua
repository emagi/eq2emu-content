--[[
    Script Name    : SpawnScripts/EastFreeport/HarbingerMcDannis.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.08 03:03:21
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 10, -10, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end