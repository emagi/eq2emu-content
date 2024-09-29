--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothtracker4.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.22 05:09:10
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
	MovementLoopAddLocation(NPC, 1182.74, -0.9, -366.87, 2, 0)
	MovementLoopAddLocation(NPC, 1144.96, -3.1, -373.47, 2, 0)
	MovementLoopAddLocation(NPC, 1109.25, -1.85, -374.11, 2, 0)
	MovementLoopAddLocation(NPC, 1078.82, 0.33, -366.56, 2, 0)
	MovementLoopAddLocation(NPC, 1056.27, 3.43, -359.09, 2, 0)
	MovementLoopAddLocation(NPC, 1037.63, 0.02, -357.52, 2, 0)
	MovementLoopAddLocation(NPC, 1028.64, -0.9, -370.73, 2, 0)
	MovementLoopAddLocation(NPC, 1034.4, -0.76, -375.42, 2, 0)
	MovementLoopAddLocation(NPC, 1064.22, 1.24, -378.31, 2, 0)
	MovementLoopAddLocation(NPC, 1089.3, 4.08, -380.44, 2, 0)
	MovementLoopAddLocation(NPC, 1119.65, 3.38, -381.1, 2, 0)
	MovementLoopAddLocation(NPC, 1150.67, -0.31, -375.59, 2, 0)
	MovementLoopAddLocation(NPC, 1180.36, -0.43, -369.08, 2, 0)
	MovementLoopAddLocation(NPC, 1166.33, -0.76, -373.73, 2, 0)
	MovementLoopAddLocation(NPC, 1146.18, 3.41, -381.5, 2, 0)
	MovementLoopAddLocation(NPC, 1112.53, 4.89, -383.25, 2, 0)
	MovementLoopAddLocation(NPC, 1037.46, -0.83, -379.71, 2, 0)
	MovementLoopAddLocation(NPC, 1032.97, -0.65, -369.75, 2, 0)
	MovementLoopAddLocation(NPC, 1035.99, -0.15, -359.32, 2, 0)
	MovementLoopAddLocation(NPC, 1051.79, 3.42, -356.64, 2, 0)
	MovementLoopAddLocation(NPC, 1069.53, -0.61, -359.28, 2, 0)
	MovementLoopAddLocation(NPC, 1100.65, -4.03, -369.6, 2, 0)
	MovementLoopAddLocation(NPC, 1151.49, -4.52, -370.64, 2, 0)
	MovementLoopAddLocation(NPC, 1182.74, -0.9, -366.87, 2, 0)
end