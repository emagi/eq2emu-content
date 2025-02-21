--[[
    Script Name    : SpawnScripts/Stonestair/CaptainNorian.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.15 06:02:23
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
	MovementLoopAddLocation(NPC, 6.43, -4.37, -98.89, 2, 0)
	MovementLoopAddLocation(NPC, 6.87, -4.37, -78.24, 2, 0)
	MovementLoopAddLocation(NPC, 14.1, -4.37, -78.32, 2, 0)
	MovementLoopAddLocation(NPC, 13.92, -4.37, -73.56, 2, 0)
	MovementLoopAddLocation(NPC, 13.83, -2.25, -66.89, 2, 0)
	MovementLoopAddLocation(NPC, 22.71, 0, -66.88, 2, 0)
	MovementLoopAddLocation(NPC, 22.41, -2.25, -57.5, 2, 0)
	MovementLoopAddLocation(NPC, 22.41, -2.25, -57.5, 2, 0)
	MovementLoopAddLocation(NPC, 30.12, -4.35, -57.31, 2, 0)
	MovementLoopAddLocation(NPC, 44.25, -4.35, -56.92, 2, 0)
	MovementLoopAddLocation(NPC, 51.29, -4.35, -47.27, 2, 0)
	MovementLoopAddLocation(NPC, 49.2, -4.35, -39.03, 2, 0)
	MovementLoopAddLocation(NPC, 41.49, -4.35, -32.74, 2, 0)
	MovementLoopAddLocation(NPC, 30.91, -4.35, -30.76, 2, 0)
	MovementLoopAddLocation(NPC, 23.32, -2.25, -30.92, 2, 0)
	MovementLoopAddLocation(NPC, 16.46, 0, -30.77, 2, 0)
	MovementLoopAddLocation(NPC, 0.23, 0, -30.4, 2, 0)
	MovementLoopAddLocation(NPC, -7.05, -2.25, -30.65, 2, 0)
	MovementLoopAddLocation(NPC, -7.23, -4.38, -23.21, 2, 0)
	MovementLoopAddLocation(NPC, -7.59, -4.42, -9.79, 2, 0)
	MovementLoopAddLocation(NPC, -4.38, -5.06, -0.11, 2, 0)
	MovementLoopAddLocation(NPC, 0.98, -5.28, 4.64, 2, 0)
	MovementLoopAddLocation(NPC, -3.76, -5.06, -0.33, 2, 0)
	MovementLoopAddLocation(NPC, -7.6, -4.36, -10.34, 2, 0)
	MovementLoopAddLocation(NPC, -7.53, -4.38, -21.57, 2, 0)
	MovementLoopAddLocation(NPC, -23.52, -4.38, -27.32, 2, 0)
	MovementLoopAddLocation(NPC, -62.03, -4.38, -26.44, 2, 0)
	MovementLoopAddLocation(NPC, -23.49, -4.38, -27.21, 2, 0)
	MovementLoopAddLocation(NPC, -14.53, -4.38, -30.23, 2, 0)
	MovementLoopAddLocation(NPC, -6.84, -2.25, -30.44, 2, 0)
	MovementLoopAddLocation(NPC, -0.61, 0, -30.47, 2, 0)
	MovementLoopAddLocation(NPC, 16.42, 0, -30.89, 2, 0)
	MovementLoopAddLocation(NPC, 23.49, -2.25, -30.64, 2, 0)
	MovementLoopAddLocation(NPC, 23.24, -4.35, -37.99, 2, 0)
	MovementLoopAddLocation(NPC, 22.82, -4.35, -50.32, 2, 0)
	MovementLoopAddLocation(NPC, 22.58, -2.25, -57.83, 2, 0)
	MovementLoopAddLocation(NPC, 22.73, 0, -65.89, 2, 0)
	MovementLoopAddLocation(NPC, 14.46, -2.25, -67.03, 2, 0)
	MovementLoopAddLocation(NPC, 14.16, -4.37, -75.2, 2, 0)
	MovementLoopAddLocation(NPC, 6.91, -4.37, -82.2, 2, 0)
end


