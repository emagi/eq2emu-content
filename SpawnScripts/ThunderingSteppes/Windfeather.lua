--[[
    Script Name    : SpawnScripts/ThunderingSteppes/Windfeather.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.16 04:08:31
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	--MovementLoopAddLocation(NPC, 1344.66, 13, -224.15, 6, 0)
	--MovementLoopAddLocation(NPC, 1352.44, 13, -185.24, 6, 0)
	--MovementLoopAddLocation(NPC, 1357.8, 13, -153.34, 6, 0)
	MovementLoopAddLocation(NPC, 1356.72, 13, -146.88, 6, 0)
	MovementLoopAddLocation(NPC, 1354.74, 8, -139.45, 6, 0)
	MovementLoopAddLocation(NPC, 1353.24, 8, -127.35, 6, 0)
	MovementLoopAddLocation(NPC, 1366.14, 8, -111.44, 6, 0)
	MovementLoopAddLocation(NPC, 1388.84, 8, -80.02, 6, 0)
	MovementLoopAddLocation(NPC, 1402.94, 8, -61.46, 6, 0)
	MovementLoopAddLocation(NPC, 1410.63, 8, -44.02, 6, 0)
	MovementLoopAddLocation(NPC, 1414.26, 8, -0.35, 6, 0)
	MovementLoopAddLocation(NPC, 1412.89, 8, 39.28, 6, 0)
	MovementLoopAddLocation(NPC, 1404.09, 8, 75.25, 6, 0)
	MovementLoopAddLocation(NPC, 1400.5, 8, 112.74, 6, 0)
	MovementLoopAddLocation(NPC, 1409.64, 8, 205.66, 6, 0)
	MovementLoopAddLocation(NPC, 1382.28, 8, 265.1, 6, 0)
	MovementLoopAddLocation(NPC, 1397.49, 8, 208.78, 6, 0)
	MovementLoopAddLocation(NPC, 1401.9, 8, 169.9, 6, 0)
	MovementLoopAddLocation(NPC, 1395.09, 8, 133.21, 6, 0)
	MovementLoopAddLocation(NPC, 1396.64, 8, 83.37, 6, 0)
	MovementLoopAddLocation(NPC, 1405.05, 8, 49.82, 6, 0)
	MovementLoopAddLocation(NPC, 1409.7, 8, -11.27, 6, 0)
	MovementLoopAddLocation(NPC, 1405.4, 8, -44.64, 6, 0)
	MovementLoopAddLocation(NPC, 1391.97, 8, -72.19, 6, 0)
	MovementLoopAddLocation(NPC, 1363.89, 8, -109.11, 6, 0)
	MovementLoopAddLocation(NPC, 1356.75, 8, -118.49, 6, 0)
	MovementLoopAddLocation(NPC, 1354.59, 8, -130.04, 6, 0)
	MovementLoopAddLocation(NPC, 1356.41, 13, -138.67, 6, 0)
	MovementLoopAddLocation(NPC, 1359.18, 13, -151.81, 6, 0)
	MovementLoopAddLocation(NPC, 1354.33, 13, -171.17, 6, 0)
	MovementLoopAddLocation(NPC, 1344.66, 13, -224.15, 6, 0)
end