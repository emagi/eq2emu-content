--[[
    Script Name    : SpawnScripts/ThunderingSteppes/agraniterumbler2.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 06:10:03
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
	MovementLoopAddLocation(NPC, 799.37, -16.04, 1007.61, 2, 0)
	MovementLoopAddLocation(NPC, 803.88, -16.02, 1018.97, 2, 0)
	MovementLoopAddLocation(NPC, 803.23, -16.03, 1031.77, 2, 0)
	MovementLoopAddLocation(NPC, 796.81, -16.11, 1041.77, 2, 0)
	MovementLoopAddLocation(NPC, 791.84, -16.93, 1045.75, 2, 0)
	MovementLoopAddLocation(NPC, 781.45, -21.11, 1052.14, 2, 0)
	MovementLoopAddLocation(NPC, 773.07, -26.27, 1063.67, 2, 0)
	MovementLoopAddLocation(NPC, 781.98, -20.71, 1051.31, 2, 0)
	MovementLoopAddLocation(NPC, 792.59, -16.75, 1045.72, 2, 0)
	MovementLoopAddLocation(NPC, 799.33, -16.03, 1039.17, 2, 0)
	MovementLoopAddLocation(NPC, 803.94, -16.02, 1029.25, 2, 0)
	MovementLoopAddLocation(NPC, 803.81, -16.07, 1020.37, 2, 0)
	MovementLoopAddLocation(NPC, 799.37, -16.04, 1007.61, 2, 0)
end