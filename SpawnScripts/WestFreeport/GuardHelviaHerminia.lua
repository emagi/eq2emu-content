--[[
    Script Name    : SpawnScripts/WestFreeport/GuardHelviaHerminia.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.17 04:01:31
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 148.38, -7.05, 128.3, 2, 0)
	MovementLoopAddLocation(NPC, 131.66, -7.52, 144.8, 2, 0)
	MovementLoopAddLocation(NPC, 130.43, -7.52, 144.12, 2, 0)
	MovementLoopAddLocation(NPC, 127.64, -8.93, 141.28, 2, 0)
	MovementLoopAddLocation(NPC, 120.35, -9.21, 133.72, 2, 0)
	MovementLoopAddLocation(NPC, 121.04, -9.21, 132.38, 2, 0)
	MovementLoopAddLocation(NPC, 128.96, -9.21, 124.39, 2, 5)
	MovementLoopAddLocation(NPC, 128.96, -9.21, 124.39, 2, 0)
	MovementLoopAddLocation(NPC, 120.84, -9.21, 132.3, 2, 0)
	MovementLoopAddLocation(NPC, 120.73, -9.21, 133.65, 2, 0)
	MovementLoopAddLocation(NPC, 127.19, -9.21, 140.7, 2, 0)
	MovementLoopAddLocation(NPC, 130.42, -7.52, 143.94, 2, 0)
	MovementLoopAddLocation(NPC, 142.97, -7.52, 156.54, 2, 0)
	MovementLoopAddLocation(NPC, 144.53, -7.52, 155.4, 2, 0)
	MovementLoopAddLocation(NPC, 175.32, -7.52, 124.62, 2, 0)
	MovementLoopAddLocation(NPC, 173.99, -7.52, 122.55, 2, 0)
	MovementLoopAddLocation(NPC, 163.35, -7.52, 111.89, 2, 0)
	MovementLoopAddLocation(NPC, 160.16, -9, 108.58, 2, 0)
	MovementLoopAddLocation(NPC, 153.66, -9.21, 101.84, 2, 0)
	MovementLoopAddLocation(NPC, 152.28, -9.21, 101.56, 2, 0)
	MovementLoopAddLocation(NPC, 150.45, -9.21, 102.42, 2, 0)
	MovementLoopAddLocation(NPC, 143.36, -9.21, 109.59, 2, 5)
	MovementLoopAddLocation(NPC, 143.36, -9.21, 109.59, 2, 0)
	MovementLoopAddLocation(NPC, 150, -9.21, 102.65, 2, 0)
	MovementLoopAddLocation(NPC, 151.67, -9.21, 101.65, 2, 0)
	MovementLoopAddLocation(NPC, 153.35, -9.21, 101.93, 2, 0)
	MovementLoopAddLocation(NPC, 159.8, -9.21, 108.46, 2, 0)
	MovementLoopAddLocation(NPC, 162.63, -7.52, 111.34, 2, 0)
	MovementLoopAddLocation(NPC, 163.9, -7.52, 112.65, 2, 0)
	MovementLoopAddLocation(NPC, 160.46, -7.05, 116.02, 2, 0)
	MovementLoopAddLocation(NPC, 152.92, -7.05, 123.41, 2, 0)
end
