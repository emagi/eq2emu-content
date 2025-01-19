--[[
    Script Name    : SpawnScripts/WestFreeport/GuardArwain.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.15 12:01:19
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