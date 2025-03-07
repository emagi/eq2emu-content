--[[
    Script Name    : SpawnScripts/NorthFreeport/Patches.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.02 08:03:39
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    RandomMovement(NPC, Spawn, 6, -6, 1, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end