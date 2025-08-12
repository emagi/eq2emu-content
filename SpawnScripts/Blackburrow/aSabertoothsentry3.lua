--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothsentry3.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.11 05:08:40
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
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
	MovementLoopAddLocation(NPC, -47.25, -18, -1.94, 2, 0)
	MovementLoopAddLocation(NPC, -46.85, -18.05, 4.09, 2, 0)
	MovementLoopAddLocation(NPC, -40.08, -17.22, 17.66, 2, 0)
	MovementLoopAddLocation(NPC, -41.49, -17.53, 22.14, 2, 0)
	MovementLoopAddLocation(NPC, -47.98, -18.22, 24.97, 2, 0)
	MovementLoopAddLocation(NPC, -51.93, -18.1, 24.22, 2, 0)
	MovementLoopAddLocation(NPC, -57.02, -18.41, 18.47, 2, 0)
	MovementLoopAddLocation(NPC, -57.68, -18.47, 12.55, 2, 0)
	MovementLoopAddLocation(NPC, -52.43, -18.36, 7.31, 2, 0)
	MovementLoopAddLocation(NPC, -48.18, -18, 5.89, 2, 0)
	MovementLoopAddLocation(NPC, -38.38, -16.96, 16.51, 2, 0)
	MovementLoopAddLocation(NPC, -30.65, -15.57, 18.27, 2, 0)
	MovementLoopAddLocation(NPC, -20.48, -13.59, 18.04, 2, 0)
	MovementLoopAddLocation(NPC, -15.1, -12.76, 14.47, 2, 0)
	MovementLoopAddLocation(NPC, -18.67, -13.26, 16.78, 2, 0)
	MovementLoopAddLocation(NPC, -25.68, -14.49, 18, 2, 0)
	MovementLoopAddLocation(NPC, -36.1, -16.59, 16.96, 2, 0)
	MovementLoopAddLocation(NPC, -44.22, -17.36, 7.23, 2, 0)
	MovementLoopAddLocation(NPC, -47.99, -17.94, 6.32, 2, 0)
	MovementLoopAddLocation(NPC, -55.53, -18.44, 8.06, 2, 0)
	MovementLoopAddLocation(NPC, -59.13, -18.42, 13.65, 2, 0)
	MovementLoopAddLocation(NPC, -56.97, -18.29, 20.12, 2, 0)
	MovementLoopAddLocation(NPC, -52.18, -18.17, 25.25, 2, 0)
	MovementLoopAddLocation(NPC, -46.62, -18.07, 24.57, 2, 0)
	MovementLoopAddLocation(NPC, -42.72, -17.58, 20.55, 2, 0)
	MovementLoopAddLocation(NPC, -41.53, -17.06, 13.6, 2, 0)
	MovementLoopAddLocation(NPC, -45.36, -17.56, 6.7, 2, 0)
end
