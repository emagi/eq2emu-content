--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothscoutDenPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.26 05:09:20
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
	MovementLoopAddLocation(NPC, 952.63, -25.84, -118.42, 2, 0)
	MovementLoopAddLocation(NPC, 958, -24.99, -173.56, 2, 0)
	MovementLoopAddLocation(NPC, 960.67, 4.34, -216.78, 2, 0)
	MovementLoopAddLocation(NPC, 971.32, 4.32, -219.73, 2, 0)
	MovementLoopAddLocation(NPC, 1003.33, 4.1, -213.36, 2, 0)
	MovementLoopAddLocation(NPC, 1044.75, 0.06, -213.41, 2, 0)
	MovementLoopAddLocation(NPC, 1061.47, 4.38, -216.74, 2, 0)
	MovementLoopAddLocation(NPC, 1065.69, 6.3, -233.65, 2, 0)
	MovementLoopAddLocation(NPC, 1063.85, 3.3, -266.6, 2, 0)
	MovementLoopAddLocation(NPC, 1046.24, 4.74, -304.82, 2, 0)
	MovementLoopAddLocation(NPC, 1044.82, 3.33, -334.24, 2, 0)
	MovementLoopAddLocation(NPC, 1056.61, 3.54, -357.34, 2, 0)
	MovementLoopAddLocation(NPC, 1080.98, 4.42, -376.14, 2, 0)
	MovementLoopAddLocation(NPC, 1104.71, 4.56, -383.2, 2, 0)
	MovementLoopAddLocation(NPC, 1136.03, 4.58, -386.49, 2, 0)
	MovementLoopAddLocation(NPC, 1170.88, 2.01, -386.18, 2, 0)
	MovementLoopAddLocation(NPC, 1201.04, 1.03, -378.74, 2, 0)
	MovementLoopAddLocation(NPC, 1231.9, -2.6, -366.83, 2, 0)
	MovementLoopAddLocation(NPC, 1295.96, -0.68, -339.05, 2, 0)
	MovementLoopAddLocation(NPC, 1305.14, -0.02, -331.31, 2, 0)
	MovementLoopAddLocation(NPC, 1319.93, 0.72, -328.35, 2, 0)
	MovementLoopAddLocation(NPC, 1303.5, -0.05, -329.05, 2, 0)
	MovementLoopAddLocation(NPC, 1246.9, -2.92, -357.97, 2, 0)
	MovementLoopAddLocation(NPC, 1194.71, 3, -376.34, 2, 0)
	MovementLoopAddLocation(NPC, 1171.96, 2.17, -385.81, 2, 0)
	MovementLoopAddLocation(NPC, 1142.36, 4.29, -386.37, 2, 0)
	MovementLoopAddLocation(NPC, 1117.08, 4.83, -386.76, 2, 0)
	MovementLoopAddLocation(NPC, 1086.21, 4.78, -378.74, 2, 0)
	MovementLoopAddLocation(NPC, 1065.5, 3.16, -367.72, 2, 0)
	MovementLoopAddLocation(NPC, 1050.98, 3.05, -352.78, 2, 0)
	MovementLoopAddLocation(NPC, 1044.47, 3.69, -330.94, 2, 0)
	MovementLoopAddLocation(NPC, 1045.06, 4.73, -308.58, 2, 0)
	MovementLoopAddLocation(NPC, 1058.31, 4.33, -281.34, 2, 0)
	MovementLoopAddLocation(NPC, 1065.56, 4.21, -247.43, 2, 0)
	MovementLoopAddLocation(NPC, 1064.22, 6.07, -229.7, 2, 0)
	MovementLoopAddLocation(NPC, 1065.67, 5.23, -215.11, 2, 0)
	MovementLoopAddLocation(NPC, 1057.06, 1.52, -205.49, 2, 0)
	MovementLoopAddLocation(NPC, 1033.7, 4.04, -199.6, 2, 0)
	MovementLoopAddLocation(NPC, 1016.2, 4.46, -206.53, 2, 0)
	MovementLoopAddLocation(NPC, 994.97, 4.22, -213.01, 2, 0)
	MovementLoopAddLocation(NPC, 982.26, 4.32, -216.25, 2, 0)
	MovementLoopAddLocation(NPC, 964.48, 4.73, -217.65, 2, 0)
	MovementLoopAddLocation(NPC, 961.14, -1.72, -208.95, 2, 0)
	MovementLoopAddLocation(NPC, 955.65, -23.65, -179.35, 2, 0)
	MovementLoopAddLocation(NPC, 952.63, -25.84, -118.42, 2, 0)
end