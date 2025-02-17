--[[
    Script Name    : SpawnScripts/Stonestair/Jackel.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.15 06:02:35
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
	MovementLoopAddLocation(NPC, 5.2, 0.5, -28.41, 2, 10)
	MovementLoopAddLocation(NPC, 10.88, 0, -46.11, 2, 10)
	MovementLoopAddLocation(NPC, 8.22, -0.04, -32.73, 6, 0)
	MovementLoopAddLocation(NPC, -0.34, 0, -30.84, 6, 0)
	MovementLoopAddLocation(NPC, -7.37, -2.25, -30.6, 6, 0)
	MovementLoopAddLocation(NPC, -7.97, -4.38, -21.91, 6, 0)
	MovementLoopAddLocation(NPC, -18.8, -4.38, -22.49, 6, 0)
	MovementLoopAddLocation(NPC, -30.28, -4.38, -27.08, 6, 8)
	MovementLoopAddLocation(NPC, -21.59, -4.38, -25.57, 2, 0)
	MovementLoopAddLocation(NPC, -15.04, -4.38, -29.86, 2, 0)
	MovementLoopAddLocation(NPC, -7.72, -2.25, -30.22, 2, 0)
	MovementLoopAddLocation(NPC, 0.43, 0, -30.09, 2, 0)
	MovementLoopAddLocation(NPC, 10.43, 0, -45.08, 2, 8)
	MovementLoopAddLocation(NPC, 11.46, -0.05, -34.34, 6, 0)
	MovementLoopAddLocation(NPC, 15.84, 0, -31.27, 6, 0)
	MovementLoopAddLocation(NPC, 23.97, -2.25, -31.09, 6, 0)
	MovementLoopAddLocation(NPC, 23.35, -4.35, -38.26, 6, 0)
	MovementLoopAddLocation(NPC, 22.8, -4.35, -50.1, 6, 0)
	MovementLoopAddLocation(NPC, 22.67, -2.25, -56.41, 6, 0)
	MovementLoopAddLocation(NPC, 22.48, 0, -64.86, 6, 0)
	MovementLoopAddLocation(NPC, 13.47, -2.25, -67.87, 2, 0)
	MovementLoopAddLocation(NPC, 14.11, -4.37, -77.88, 2, 0)
	MovementLoopAddLocation(NPC, 7.63, -4.37, -81.72, 2, 8)
	MovementLoopAddLocation(NPC, 1.59, -4.37, -70.98, 2, 0)
	MovementLoopAddLocation(NPC, 6.43, -4.37, -77.4, 2, 0)
	MovementLoopAddLocation(NPC, 13.09, -4.37, -77.24, 2, 0)
	MovementLoopAddLocation(NPC, 13.91, -4.37, -74.38, 2, 0)
	MovementLoopAddLocation(NPC, 13.85, -2.25, -67.7, 2, 0)
	MovementLoopAddLocation(NPC, 22.57, 0, -66.97, 2, 0)
	MovementLoopAddLocation(NPC, 22.5, -2.25, -56.34, 2, 0)
	MovementLoopAddLocation(NPC, 22.37, -4.35, -50.17, 2, 0)
	MovementLoopAddLocation(NPC, 23.15, -4.35, -38.69, 2, 0)
	MovementLoopAddLocation(NPC, 23.36, -2.25, -31.03, 2, 0)
	MovementLoopAddLocation(NPC, 15.26, 0, -31.17, 2, 0)
end