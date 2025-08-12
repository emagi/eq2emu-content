--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothsentry2.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.11 05:08:27
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
	MovementLoopAddLocation(NPC, -19.47, -16.25, 78.1, 2, 0)
	MovementLoopAddLocation(NPC, -16.34, -16.21, 73.27, 2, 0)
	MovementLoopAddLocation(NPC, -13.62, -16.04, 66.81, 2, 0)
	MovementLoopAddLocation(NPC, -7.86, -15.34, 67.59, 2, 0)
	MovementLoopAddLocation(NPC, 3.38, -15.6, 66.57, 2, 0)
	MovementLoopAddLocation(NPC, 12.68, -15.5, 63.51, 2, 0)
	MovementLoopAddLocation(NPC, 3.67, -15.62, 65.49, 2, 0)
	MovementLoopAddLocation(NPC, -6.68, -15.22, 66.55, 2, 0)
	MovementLoopAddLocation(NPC, -12.48, -15.96, 65.66, 2, 0)
	MovementLoopAddLocation(NPC, -12.21, -15.61, 59.87, 2, 0)
	MovementLoopAddLocation(NPC, -11.18, -15.26, 55.19, 2, 0)
	MovementLoopAddLocation(NPC, -13.77, -14.54, 46.94, 2, 0)
	MovementLoopAddLocation(NPC, -15.12, -14.09, 40.76, 2, 0)
	MovementLoopAddLocation(NPC, -16.78, -13.55, 35.05, 2, 0)
	MovementLoopAddLocation(NPC, -16.7, -13.1, 29.69, 2, 0)
	MovementLoopAddLocation(NPC, -16.86, -13.47, 34.29, 2, 0)
	MovementLoopAddLocation(NPC, -15.42, -14.03, 40.1, 2, 0)
	MovementLoopAddLocation(NPC, -11, -15.03, 52.28, 2, 0)
	MovementLoopAddLocation(NPC, -13.51, -15.97, 64.93, 2, 0)
	MovementLoopAddLocation(NPC, -6.72, -15.22, 66.45, 2, 0)
	MovementLoopAddLocation(NPC, 5.35, -15.57, 66.2, 2, 0)
	MovementLoopAddLocation(NPC, 14.29, -15.5, 62.94, 2, 0)
	MovementLoopAddLocation(NPC, 6.02, -15.55, 65.09, 2, 0)
	MovementLoopAddLocation(NPC, -5.32, -15.21, 66.75, 2, 0)
	MovementLoopAddLocation(NPC, -12.5, -15.95, 65.45, 2, 0)
	MovementLoopAddLocation(NPC, -15.24, -16.18, 71.52, 2, 0)
end
