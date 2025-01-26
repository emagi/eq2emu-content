--[[
    Script Name    : SpawnScripts/NorthFreeport/ViscountLuciusGraniusVindex.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.25 08:01:35
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