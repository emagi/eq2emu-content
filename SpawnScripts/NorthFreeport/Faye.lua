--[[
    Script Name    : SpawnScripts/NorthFreeport/Faye.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.04 04:02:39
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    RandomMovement(NPC, Spawn, 12, -12, 1, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end