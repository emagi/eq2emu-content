--[[
    Script Name    : SpawnScripts/SouthFreeport/GuardCeaciliaVelva.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.16 09:03:13
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