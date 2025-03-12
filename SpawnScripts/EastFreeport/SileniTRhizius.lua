--[[
    Script Name    : SpawnScripts/EastFreeport/SileniTRhizius.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 03:10:18
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -57.86, -37.78, 33.12, 2, 0)
	MovementLoopAddLocation(NPC, -64.4, -37.78, 34.27, 2, 0)
	MovementLoopAddLocation(NPC, -68.61, -37.78, 36.16, 2, 0)
	MovementLoopAddLocation(NPC, -70.2, -37.87, 41.49, 2, 0)
	MovementLoopAddLocation(NPC, -71.92, -38.83, 44.36, 2, 0)
	MovementLoopAddLocation(NPC, -75.5, -38.75, 47.92, 2, 0)
	MovementLoopAddLocation(NPC, -77.91, -37.87, 49.63, 2, 0)
	MovementLoopAddLocation(NPC, -81.63, -37.87, 52.22, 2, 0)
	MovementLoopAddLocation(NPC, -82.66, -37.86, 58.9, 2, 0)
	MovementLoopAddLocation(NPC, -94.16, -37.86, 58.16, 2, 0)
	MovementLoopAddLocation(NPC, -98.04, -37.86, 60.9, 2, 0)
	MovementLoopAddLocation(NPC, -99.6, -37.86, 60.87, 2, 0)
	MovementLoopAddLocation(NPC, -99.6, -37.86, 60.87, 2, 0)
	MovementLoopAddLocation(NPC, -99.6, -37.86, 60.87, 2, 2)
	MovementLoopAddLocation(NPC, -102.81, -37.71, 60.62, 2, 0)
	MovementLoopAddLocation(NPC, -110.66, -37.73, 60.27, 2, 0)
	MovementLoopAddLocation(NPC, -108.82, -37.73, 57.61, 2, 0)
	MovementLoopAddLocation(NPC, -105.25, -37.72, 54.79, 2, 0)
	MovementLoopAddLocation(NPC, -100.14, -37.71, 51.13, 2, 0)
	MovementLoopAddLocation(NPC, -98.51, -37.71, 48.36, 2, 0)
	MovementLoopAddLocation(NPC, -97.43, -37.73, 38.51, 2, 0)
	MovementLoopAddLocation(NPC, -98.64, -37.72, 35.61, 2, 0)
	MovementLoopAddLocation(NPC, -102.95, -37.72, 32.86, 2, 0)
	MovementLoopAddLocation(NPC, -106.49, -37.72, 26.6, 2, 0)
	MovementLoopAddLocation(NPC, -107.01, -37.73, 21.57, 2, 0)
	MovementLoopAddLocation(NPC, -105.42, -37.73, 16.56, 2, 0)
	MovementLoopAddLocation(NPC, -100.88, -37.72, 11.66, 2, 0)
	MovementLoopAddLocation(NPC, -96.44, -37.73, 9.23, 2, 0)
	MovementLoopAddLocation(NPC, -88.29, -37.73, 9.54, 2, 0)
	MovementLoopAddLocation(NPC, -83.74, -37.73, 13.24, 2, 0)
	MovementLoopAddLocation(NPC, -81.87, -37.74, 17.17, 2, 0)
	MovementLoopAddLocation(NPC, -80.47, -37.74, 24.42, 2, 0)
	MovementLoopAddLocation(NPC, -80.91, -37.74, 30.37, 2, 0)
	MovementLoopAddLocation(NPC, -78.59, -37.73, 31.24, 2, 0)
	MovementLoopAddLocation(NPC, -75.19, -37.71, 31.2, 2, 0)
	MovementLoopAddLocation(NPC, -75.19, -37.71, 31.2, 2, 0)
	MovementLoopAddLocation(NPC, -75.19, -37.71, 31.2, 2, 2)
	MovementLoopAddLocation(NPC, -72.49, -37.78, 31.24, 2, 0)
	MovementLoopAddLocation(NPC, -57.86, -37.78, 33.12, 2, 60)
	MovementLoopAddLocation(NPC, -57.86, -37.78, 33.12, 2, 0)
end