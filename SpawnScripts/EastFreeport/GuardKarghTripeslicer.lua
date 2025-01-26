--[[
    Script Name    : SpawnScripts/EastFreeport/GuardKarghTripeslicer.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.23 03:01:33
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