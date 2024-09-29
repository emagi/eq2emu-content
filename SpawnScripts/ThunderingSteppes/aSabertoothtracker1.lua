--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothtracker1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.21 08:09:58
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
	MovementLoopAddLocation(NPC, 1317.62, 12.08, -395.39, 2, 0)
	MovementLoopAddLocation(NPC, 1309.48, 0.93, -378.38, 2, 0)
	MovementLoopAddLocation(NPC, 1301.77, 0.22, -312.1, 2, 0)
	MovementLoopAddLocation(NPC, 1325.22, 0.98, -297.36, 2, 0)
	MovementLoopAddLocation(NPC, 1340.61, 1.62, -291.29, 2, 0)
	MovementLoopAddLocation(NPC, 1345.24, 0.25, -269.82, 2, 0)
	MovementLoopAddLocation(NPC, 1343.49, 0.25, -250.16, 2, 0)
	MovementLoopAddLocation(NPC, 1340.56, 1.2, -245.34, 2, 0)
	MovementLoopAddLocation(NPC, 1322.46, 0.55, -231.93, 2, 0)
	MovementLoopAddLocation(NPC, 1322.46, 0.55, -231.93, 2, 0)
	MovementLoopAddLocation(NPC, 1328.2, 1.46, -236.55, 2, 0)
	MovementLoopAddLocation(NPC, 1341.74, 0.99, -246.23, 2, 0)
	MovementLoopAddLocation(NPC, 1345.87, 1.69, -276.06, 2, 0)
	MovementLoopAddLocation(NPC, 1339.28, 1.47, -294.31, 2, 0)
	MovementLoopAddLocation(NPC, 1305.66, 0.57, -306.14, 2, 0)
	MovementLoopAddLocation(NPC, 1313.24, 0.27, -372.34, 2, 0)
	MovementLoopAddLocation(NPC, 1317.62, 12.08, -395.39, 2, 0)
end
