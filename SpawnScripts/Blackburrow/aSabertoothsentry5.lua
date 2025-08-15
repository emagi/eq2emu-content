--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothsentry5.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.14 06:08:28
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
	MovementLoopAddLocation(NPC, -55.76, -18.06, -22.02, 2, 0)
	MovementLoopAddLocation(NPC, -59.1, -16.67, -17.89, 2, 0)
	MovementLoopAddLocation(NPC, -61.14, -14.05, -10.88, 2, 0)
	MovementLoopAddLocation(NPC, -62.96, -11.69, -0.13, 2, 0)
	MovementLoopAddLocation(NPC, -65.97, -10.76, 4.73, 2, 0)
	MovementLoopAddLocation(NPC, -72.8, -8.9, 13.17, 2, 0)
	MovementLoopAddLocation(NPC, -75.99, -7.97, 25.39, 2, 0)
	MovementLoopAddLocation(NPC, -74.26, -7.9, 30.58, 2, 0)
	MovementLoopAddLocation(NPC, -56.19, -7.85, 41.55, 2, 0)
	MovementLoopAddLocation(NPC, -50.63, -7.16, 40.79, 2, 0)
	MovementLoopAddLocation(NPC, -47.21, -6.46, 39.95, 2, 0)
	MovementLoopAddLocation(NPC, -54.97, -7.79, 40.96, 2, 0)
	MovementLoopAddLocation(NPC, -73.55, -7.88, 31.64, 2, 0)
	MovementLoopAddLocation(NPC, -75.94, -8.03, 23.11, 2, 0)
	MovementLoopAddLocation(NPC, -73.04, -8.8, 13.74, 2, 0)
	MovementLoopAddLocation(NPC, -63.87, -11.36, 1.46, 2, 0)
	MovementLoopAddLocation(NPC, -61.81, -12.89, -6.23, 2, 0)
	MovementLoopAddLocation(NPC, -59.62, -15.33, -13.89, 2, 0)
	MovementLoopAddLocation(NPC, -59.16, -16.37, -17.04, 2, 0)
end
