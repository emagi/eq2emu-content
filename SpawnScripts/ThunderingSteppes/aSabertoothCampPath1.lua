--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothCampPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.21 09:09:32
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
	MovementLoopAddLocation(NPC, 1312.13, 13.89, -409.31, 2, 0)
	MovementLoopAddLocation(NPC, 1303.83, 12.59, -408.44, 2, 0)
	MovementLoopAddLocation(NPC, 1284.64, 3.35, -402.93, 2, 0)
	MovementLoopAddLocation(NPC, 1272.87, 1.6, -401.1, 2, 0)
	MovementLoopAddLocation(NPC, 1262.17, -1.08, -396.98, 2, 0)
	MovementLoopAddLocation(NPC, 1250.39, -1.48, -394.34, 2, 0)
	MovementLoopAddLocation(NPC, 1239.39, -2.49, -384.07, 2, 0)
	MovementLoopAddLocation(NPC, 1243.82, -2.43, -387.43, 2, 0)
	MovementLoopAddLocation(NPC, 1248.69, -1.73, -393.15, 2, 0)
	MovementLoopAddLocation(NPC, 1263.82, -1.21, -395.27, 2, 0)
	MovementLoopAddLocation(NPC, 1278.05, 1.92, -400.15, 2, 0)
	MovementLoopAddLocation(NPC, 1304.18, 12.43, -407.59, 2, 0)
	MovementLoopAddLocation(NPC, 1312.13, 13.89, -409.31, 2, 0)
end