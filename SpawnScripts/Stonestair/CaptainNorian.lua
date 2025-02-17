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
	MovementLoopAddLocation(NPC, 6.61, -4.37, -83.71, 2, 0)
	MovementLoopAddLocation(NPC, 13.71, -4.37, -73.85, 2, 0)
	MovementLoopAddLocation(NPC, 13.79, -2.25, -67.04, 2, 0)
	MovementLoopAddLocation(NPC, 22.49, 0, -66.86, 2, 0)
	MovementLoopAddLocation(NPC, 22.61, -2.25, -57.41, 2, 0)
	MovementLoopAddLocation(NPC, 48.03, -4.35, -37.65, 2, 0)
	MovementLoopAddLocation(NPC, 40.93, -4.35, -33.12, 2, 0)
	MovementLoopAddLocation(NPC, 30.61, -4.35, -30.95, 2, 0)
	MovementLoopAddLocation(NPC, 23.77, -2.25, -30.99, 2, 0)
	MovementLoopAddLocation(NPC, 16.54, 0, -31.03, 2, 0)
	MovementLoopAddLocation(NPC, -0.22, 0, -30.66, 2, 0)
	MovementLoopAddLocation(NPC, -7.69, -2.25, -30.69, 2, 0)
	MovementLoopAddLocation(NPC, -13.41, -4.27, -30.38, 2, 0)
	MovementLoopAddLocation(NPC, -23.43, -4.38, -28.91, 2, 0)
	MovementLoopAddLocation(NPC, -60.66, -4.38, -26.5, 2, 0)
	MovementLoopAddLocation(NPC, -26.38, -4.38, -27.43, 2, 0)
	MovementLoopAddLocation(NPC, -18.01, -4.38, -22.32, 2, 0)
	MovementLoopAddLocation(NPC, -8.33, -4.38, -20.49, 2, 0)
	MovementLoopAddLocation(NPC, -6.63, -4.82, -6.73, 2, 0)
	MovementLoopAddLocation(NPC, -3.14, -5.05, 0.34, 2, 0)
	MovementLoopAddLocation(NPC, 0.48, -5.27, 3.91, 2, 0)
	MovementLoopAddLocation(NPC, -3.34, -5.06, -0.44, 2, 0)
	MovementLoopAddLocation(NPC, -7.02, -4.82, -8.3, 2, 0)
	MovementLoopAddLocation(NPC, -7.15, -4.38, -23.29, 2, 0)
	MovementLoopAddLocation(NPC, -7.36, -2.25, -29.97, 2, 0)
	MovementLoopAddLocation(NPC, 0.62, 0, -30.61, 2, 0)
	MovementLoopAddLocation(NPC, 16.17, 0, -30.86, 2, 0)
	MovementLoopAddLocation(NPC, 24.18, -2.25, -31.12, 2, 0)
	MovementLoopAddLocation(NPC, 23.52, -4.35, -38.55, 2, 0)
	MovementLoopAddLocation(NPC, 22.51, -4.35, -49.52, 2, 0)
	MovementLoopAddLocation(NPC, 22.37, -2.25, -56.94, 2, 0)
	MovementLoopAddLocation(NPC, 22.45, 0, -66.57, 2, 0)
	MovementLoopAddLocation(NPC, 14.49, -2.25, -67.06, 2, 0)
	MovementLoopAddLocation(NPC, 13.93, -4.37, -74.32, 2, 0)
	MovementLoopAddLocation(NPC, 13.68, -4.37, -80.1, 2, 0)
	MovementLoopAddLocation(NPC, 6.89, -4.37, -85.58, 2, 0)
end