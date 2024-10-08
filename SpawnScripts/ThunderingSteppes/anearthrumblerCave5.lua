--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anearthrumblerCave5.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 07:10:29
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
	MovementLoopAddLocation(NPC, 884.1, -19.21, 1135.24, 2, 0)
	MovementLoopAddLocation(NPC, 887.37, -20.92, 1142.41, 2, 0)
	MovementLoopAddLocation(NPC, 893.27, -23.8, 1153.9, 2, 0)
	MovementLoopAddLocation(NPC, 892.03, -23.08, 1161.27, 2, 0)
	MovementLoopAddLocation(NPC, 886.08, -20.08, 1171.82, 2, 0)
	MovementLoopAddLocation(NPC, 883.61, -17.49, 1180.75, 2, 0)
	MovementLoopAddLocation(NPC, 884.41, -16.22, 1188.49, 2, 0)
	MovementLoopAddLocation(NPC, 883.86, -16.94, 1182.76, 2, 0)
	MovementLoopAddLocation(NPC, 885.56, -19.45, 1174.24, 2, 0)
	MovementLoopAddLocation(NPC, 891.31, -22.51, 1163.56, 2, 0)
	MovementLoopAddLocation(NPC, 884.1, -19.21, 1135.24, 2, 0)
end