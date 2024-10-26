--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothscoutBeachPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.26 05:09:08
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
	MovementLoopAddLocation(NPC, -86.22, -24.16, -980.07, 2, 0)
	MovementLoopAddLocation(NPC, -101.8, -23.65, -957.31, 2, 0)
	MovementLoopAddLocation(NPC, -106.31, -23.47, -926.76, 2, 0)
	MovementLoopAddLocation(NPC, -91.67, -22.99, -876.26, 2, 0)
	MovementLoopAddLocation(NPC, -83.9, -24.52, -861.53, 2, 0)
	MovementLoopAddLocation(NPC, -83.91, -24.08, -841.11, 2, 0)
	MovementLoopAddLocation(NPC, -97.98, -23.47, -825.33, 2, 0)
	MovementLoopAddLocation(NPC, -114.96, -23.62, -815.47, 2, 0)
	MovementLoopAddLocation(NPC, -99.48, -23.41, -824.02, 2, 0)
	MovementLoopAddLocation(NPC, -87.71, -24.53, -836.27, 2, 0)
	MovementLoopAddLocation(NPC, -85.88, -24.61, -853.94, 2, 0)
	MovementLoopAddLocation(NPC, -97.94, -23.35, -883.48, 2, 0)
	MovementLoopAddLocation(NPC, -103.54, -23.21, -917.05, 2, 0)
	MovementLoopAddLocation(NPC, -94.5, -22.7, -950.07, 2, 0)
	MovementLoopAddLocation(NPC, -86.22, -24.16, -980.07, 2, 0)
end