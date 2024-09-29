--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothscoutCrater.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.26 05:09:12
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
	MovementLoopAddLocation(NPC, 867.1, -3.87, -135.7, 2, 0)
	MovementLoopAddLocation(NPC, 868.71, -3.91, -147.9, 2, 0)
	MovementLoopAddLocation(NPC, 877.56, -3.9, -167.33, 2, 0)
	MovementLoopAddLocation(NPC, 902.98, -5.93, -190.48, 2, 0)
	MovementLoopAddLocation(NPC, 923.61, -5.12, -200.03, 2, 0)
	MovementLoopAddLocation(NPC, 961.29, -1.75, -208.91, 2, 0)
	MovementLoopAddLocation(NPC, 986.71, -3.18, -203.6, 2, 0)
	MovementLoopAddLocation(NPC, 1015.18, -4.28, -191.71, 2, 0)
	MovementLoopAddLocation(NPC, 1035.56, -3.65, -177.94, 2, 0)
	MovementLoopAddLocation(NPC, 1046.89, -2.1, -166.77, 2, 0)
	MovementLoopAddLocation(NPC, 1058.11, -2.07, -150.13, 2, 0)
	MovementLoopAddLocation(NPC, 1067.63, -1.61, -128.4, 2, 0)
	MovementLoopAddLocation(NPC, 1071.31, -0.27, -107.25, 2, 0)
	MovementLoopAddLocation(NPC, 1068.59, -1.79, -123.08, 2, 0)
	MovementLoopAddLocation(NPC, 1062.67, -1.7, -142.13, 2, 0)
	MovementLoopAddLocation(NPC, 1050.41, -1.5, -163.1, 2, 0)
	MovementLoopAddLocation(NPC, 1032.06, -3.56, -181.07, 2, 0)
	MovementLoopAddLocation(NPC, 1004.14, -4.73, -196.72, 2, 0)
	MovementLoopAddLocation(NPC, 975.9, -3.75, -205.27, 2, 0)
	MovementLoopAddLocation(NPC, 952.58, -4.11, -206.31, 2, 0)
	MovementLoopAddLocation(NPC, 931.43, -4.54, -203.12, 2, 0)
	MovementLoopAddLocation(NPC, 904.73, -5.21, -192.9, 2, 0)
	MovementLoopAddLocation(NPC, 884.84, -4.28, -177.89, 2, 0)
	MovementLoopAddLocation(NPC, 874.01, -2.98, -162.41, 2, 0)
	MovementLoopAddLocation(NPC, 867.1, -3.87, -135.7, 2, 0)
end