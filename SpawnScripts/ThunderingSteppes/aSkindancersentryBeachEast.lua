--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSkindancersentryBeachEast.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.09 06:10:04
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
	MovementLoopAddLocation(NPC, 475.45, -22.83, 1155.37, 2, 0)
	MovementLoopAddLocation(NPC, 476.31, -22.52, 1166.22, 2, 0)
	MovementLoopAddLocation(NPC, 473.21, -22.95, 1177, 2, 0)
	MovementLoopAddLocation(NPC, 462.1, -23.17, 1199.9, 2, 0)
	MovementLoopAddLocation(NPC, 456.91, -23.18, 1214.18, 2, 0)
	MovementLoopAddLocation(NPC, 445.76, -22.82, 1229.86, 2, 0)
	MovementLoopAddLocation(NPC, 435.35, -23.13, 1246.25, 2, 0)
	MovementLoopAddLocation(NPC, 419.13, -22.95, 1254.57, 2, 0)
	MovementLoopAddLocation(NPC, 396.28, -22, 1258.16, 2, 0)
	MovementLoopAddLocation(NPC, 363.13, -21.35, 1265.08, 2, 0)
	MovementLoopAddLocation(NPC, 385.63, -22.88, 1262.33, 2, 0)
	MovementLoopAddLocation(NPC, 413.86, -22.93, 1256.56, 2, 0)
	MovementLoopAddLocation(NPC, 426.47, -22.44, 1249.49, 2, 0)
	MovementLoopAddLocation(NPC, 440.45, -21.95, 1231.9, 2, 0)
	MovementLoopAddLocation(NPC, 451.59, -23.29, 1222.71, 2, 0)
	MovementLoopAddLocation(NPC, 458.34, -22.28, 1198.84, 2, 0)
	MovementLoopAddLocation(NPC, 471.55, -23.6, 1183.62, 2, 0)
	MovementLoopAddLocation(NPC, 476.57, -23.12, 1172.79, 2, 0)
	MovementLoopAddLocation(NPC, 475.45, -22.83, 1155.37, 2, 0)
end