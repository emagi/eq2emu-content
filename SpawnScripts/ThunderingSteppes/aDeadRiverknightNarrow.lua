--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aDeadRiverknightNarrow.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.31 07:10:29
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end