--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothtracker3.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.22 05:09:20
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
	MovementLoopAddLocation(NPC, 1197.72, -0.06, -357.44, 2, 0)
	MovementLoopAddLocation(NPC, 1198.95, -2.47, -339.38, 2, 0)
	MovementLoopAddLocation(NPC, 1198.06, -3.66, -304.91, 2, 0)
	MovementLoopAddLocation(NPC, 1199.96, 3.6, -278.3, 2, 0)
	MovementLoopAddLocation(NPC, 1197.14, 3.59, -243.03, 2, 0)
	MovementLoopAddLocation(NPC, 1196.98, -1.18, -212.23, 2, 0)
	MovementLoopAddLocation(NPC, 1196.84, 5.73, -185.41, 2, 0)
	MovementLoopAddLocation(NPC, 1196.6, 0.48, -138.2, 2, 0)
	MovementLoopAddLocation(NPC, 1196.85, 0.76, -147.02, 2, 0)
	MovementLoopAddLocation(NPC, 1198.01, 5.33, -183.38, 2, 0)
	MovementLoopAddLocation(NPC, 1194.97, -1.08, -203.34, 2, 0)
	MovementLoopAddLocation(NPC, 1199.68, 3.86, -232.71, 2, 0)
	MovementLoopAddLocation(NPC, 1204.83, 3.29, -281.63, 2, 0)
	MovementLoopAddLocation(NPC, 1202.53, -1.44, -311.24, 2, 0)
	MovementLoopAddLocation(NPC, 1197.72, -0.06, -357.44, 2, 0)
end