--[[
    Script Name    : SpawnScripts/NorthFreeport/GuardTinidelaLKar.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.25 05:01:18
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