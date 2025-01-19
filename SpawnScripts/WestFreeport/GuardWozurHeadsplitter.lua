--[[
    Script Name    : SpawnScripts/WestFreeport/GuardWozurHeadsplitter.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.17 07:01:55
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