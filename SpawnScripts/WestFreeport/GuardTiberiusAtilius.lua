--[[
    Script Name    : SpawnScripts/WestFreeport/GuardTiberiusAtilius.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.20 03:01:52
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end