--[[
    Script Name    : SpawnScripts/ThunderingSteppes/agraniterumbler3.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 07:10:09
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 883.34, -18.52, 1040.01, 2, 0)
	MovementLoopAddLocation(NPC, 883.48, -17.91, 1061.12, 2, 0)
	MovementLoopAddLocation(NPC, 883.69, -17.42, 1093.61, 2, 0)
	MovementLoopAddLocation(NPC, 883.66, -17.99, 1073.93, 2, 0)
	MovementLoopAddLocation(NPC, 883.27, -17.93, 1057.19, 2, 0)
	MovementLoopAddLocation(NPC, 883.34, -18.52, 1040.01, 2, 0)
end