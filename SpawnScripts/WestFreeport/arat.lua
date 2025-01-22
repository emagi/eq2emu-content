--[[
    Script Name    : SpawnScripts/WestFreeport/arat.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.20 03:01:55
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 12, -12, 3, 0, 5)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end