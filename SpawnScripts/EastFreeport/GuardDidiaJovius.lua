--[[
    Script Name    : SpawnScripts/EastFreeport/GuardDidiaJovius.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.22 05:01:32
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