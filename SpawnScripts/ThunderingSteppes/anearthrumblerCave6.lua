--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anearthrumblerCave6.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 07:10:23
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
	MovementLoopAddLocation(NPC, 884.44, -18.3, 1129.28, 2, 0)
	MovementLoopAddLocation(NPC, 884.27, -17.96, 1110.4, 2, 0)
	MovementLoopAddLocation(NPC, 891.37, -16.34, 1113.64, 2, 0)
	MovementLoopAddLocation(NPC, 896.05, -16.86, 1118.4, 2, 0)
	MovementLoopAddLocation(NPC, 911.46, -23.65, 1132.66, 2, 0)
	MovementLoopAddLocation(NPC, 913.35, -24.57, 1136.33, 2, 0)
	MovementLoopAddLocation(NPC, 913.47, -29.24, 1155.56, 2, 0)
	MovementLoopAddLocation(NPC, 916.78, -29.6, 1170.29, 2, 0)
	MovementLoopAddLocation(NPC, 925.8, -26.09, 1182.57, 2, 0)
	MovementLoopAddLocation(NPC, 937.1, -25.33, 1188.91, 2, 0)
	MovementLoopAddLocation(NPC, 947.88, -24.9, 1191.39, 2, 0)
	MovementLoopAddLocation(NPC, 964.18, -23.07, 1191.3, 2, 0)
	MovementLoopAddLocation(NPC, 953.18, -24.25, 1191.36, 2, 0)
	MovementLoopAddLocation(NPC, 940.58, -24.96, 1189.76, 2, 0)
	MovementLoopAddLocation(NPC, 929.39, -25.59, 1184.6, 2, 0)
	MovementLoopAddLocation(NPC, 922.94, -27.15, 1179.37, 2, 0)
	MovementLoopAddLocation(NPC, 918.36, -29.09, 1172.75, 2, 0)
	MovementLoopAddLocation(NPC, 915.01, -30.33, 1163.65, 2, 0)
	MovementLoopAddLocation(NPC, 914.29, -29.14, 1155.1, 2, 0)
	MovementLoopAddLocation(NPC, 914.31, -25.14, 1139.77, 2, 0)
	MovementLoopAddLocation(NPC, 911.51, -23.73, 1132.99, 2, 0)
	MovementLoopAddLocation(NPC, 903.04, -20.73, 1124.22, 2, 0)
	MovementLoopAddLocation(NPC, 895.73, -16.55, 1116.95, 2, 0)
	MovementLoopAddLocation(NPC, 887.14, -17.69, 1110.6, 2, 0)
	MovementLoopAddLocation(NPC, 884.29, -17.91, 1112.03, 2, 0)
	MovementLoopAddLocation(NPC, 884.44, -18.3, 1129.28, 2, 0)
end