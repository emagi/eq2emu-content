--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothscoutCave.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.26 05:09:49
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
	MovementLoopAddLocation(NPC, -13.33, 0.16, -1020.83, 2, 0)
	MovementLoopAddLocation(NPC, -2.61, 0.17, -1021.86, 2, 0)
	MovementLoopAddLocation(NPC, 9.81, -0.11, -1021.29, 2, 0)
	MovementLoopAddLocation(NPC, 22.49, -2.1, -1031.47, 2, 0)
	MovementLoopAddLocation(NPC, 32, -6.97, -1048.72, 2, 0)
	MovementLoopAddLocation(NPC, 26.45, -11.1, -1062.84, 2, 0)
	MovementLoopAddLocation(NPC, 15.86, -12.56, -1072, 2, 0)
	MovementLoopAddLocation(NPC, -3.53, -16.12, -1081.55, 2, 0)
	MovementLoopAddLocation(NPC, -15.39, -18.38, -1092.93, 2, 0)
	MovementLoopAddLocation(NPC, -34.16, -21.31, -1092.85, 2, 0)
	MovementLoopAddLocation(NPC, -55.14, -24.83, -1074.15, 2, 0)
	MovementLoopAddLocation(NPC, -58.78, -25.33, -1066.34, 2, 0)
	MovementLoopAddLocation(NPC, -56.23, -24.95, -1073.14, 2, 0)
	MovementLoopAddLocation(NPC, -41.7, -22.51, -1087.76, 2, 0)
	MovementLoopAddLocation(NPC, -30.45, -20.74, -1092.95, 2, 0)
	MovementLoopAddLocation(NPC, -18.85, -18.82, -1092.3, 2, 0)
	MovementLoopAddLocation(NPC, 13.08, -13.01, -1073.53, 2, 0)
	MovementLoopAddLocation(NPC, 22.93, -11.22, -1066.9, 2, 0)
	MovementLoopAddLocation(NPC, 31.88, -7.74, -1051.89, 2, 0)
	MovementLoopAddLocation(NPC, 24.66, -2.67, -1033.82, 2, 0)
	MovementLoopAddLocation(NPC, 15.45, -0.77, -1025.53, 2, 0)
	MovementLoopAddLocation(NPC, 8.71, -0.21, -1023.37, 2, 0)
	MovementLoopAddLocation(NPC, -13.33, 0.16, -1020.83, 2, 0)
end
