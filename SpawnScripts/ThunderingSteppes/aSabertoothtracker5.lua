--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothtracker5.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.22 06:09:37
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 30, -30, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end