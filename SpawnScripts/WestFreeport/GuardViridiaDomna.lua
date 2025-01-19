--[[
    Script Name    : SpawnScripts/WestFreeport/GuardViridiaDomna.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.16 05:01:48
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