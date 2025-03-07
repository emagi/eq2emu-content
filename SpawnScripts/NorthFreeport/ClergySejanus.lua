--[[
    Script Name    : SpawnScripts/NorthFreeport/ClergySejanus.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 03:06:39
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericEcologyHail(NPC, Spawn, faction)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -101.9, -8.98, -122.77, 2, 0)
	MovementLoopAddLocation(NPC, -99.12, -8.99, -117.77, 2, 0)
	MovementLoopAddLocation(NPC, -95.18, -8.99, -116.29, 2, 0)
	MovementLoopAddLocation(NPC, -98.26, -8.02, -107.35, 2, 0)
	MovementLoopAddLocation(NPC, -90.39, -8.06, -101.36, 2, 0)
	MovementLoopAddLocation(NPC, -72.8, -7.96, -97.38, 2, 0)
	MovementLoopAddLocation(NPC, -72.8, -7.96, -97.38, 2, 8)
	MovementLoopAddLocation(NPC, -105.96, -8.11, -101.08, 2, 0)
	MovementLoopAddLocation(NPC, -105.96, -8.11, -101.08, 2, 0)
	MovementLoopAddLocation(NPC, -84.28, -8, -100.49, 2, 0)
	MovementLoopAddLocation(NPC, -68.74, -7.97, -107.92, 2, 0)
	MovementLoopAddLocation(NPC, -61.87, -7.96, -118.97, 2, 0)
	MovementLoopAddLocation(NPC, -61.87, -7.96, -118.97, 2, 8)
	MovementLoopAddLocation(NPC, -65.76, -7.96, -108.78, 2, 0)
	MovementLoopAddLocation(NPC, -87.07, -8.04, -100.63, 2, 0)
	MovementLoopAddLocation(NPC, -96.2, -8.06, -102.8, 2, 0)
	MovementLoopAddLocation(NPC, -93.89, -8.98, -114.72, 2, 0)
	MovementLoopAddLocation(NPC, -100.68, -8.98, -118.55, 2, 0)
	MovementLoopAddLocation(NPC, -101.9, -8.99, -122.77, 2, 0)
	MovementLoopAddLocation(NPC, -101.9, -8.99, -122.77, 2, 8)
end
