--[[
    Script Name    : SpawnScripts/NorthFreeport/VenetiaGalatea.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 07:06:57
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    AddTimer(NPC, 6000, "waypoints")
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")	
    IdleAggressive(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
    GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn, faction)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -51.39, -7.97, -153.89, 2, 0)
	MovementLoopAddLocation(NPC, -50.21, -7.95, -138.96, 2, 0)
	MovementLoopAddLocation(NPC, -56.96, -7.94, -115.69, 2, 0)
	MovementLoopAddLocation(NPC, -56.96, -7.94, -115.69, 2, 60)
	MovementLoopAddLocation(NPC, -53.1, -7.94, -128.98, 2, 0)
	MovementLoopAddLocation(NPC, -57.64, -7.96, -137.76, 2, 0)
	MovementLoopAddLocation(NPC, -57.64, -7.96, -137.76, 2, 60)
	MovementLoopAddLocation(NPC, -55.55, -7.94, -127.06, 2, 0)
	MovementLoopAddLocation(NPC, -55.55, -7.94, -127.06, 2, 60)
	MovementLoopAddLocation(NPC, -52.26, -7.94, -124.85, 2, 0)
	MovementLoopAddLocation(NPC, -47.64, -8.48, -124.25, 2, 0)
	MovementLoopAddLocation(NPC, -33.67, -8.34, -122.71, 2, 0)
	MovementLoopAddLocation(NPC, -20.58, -7.93, -126.9, 2, 0)
	MovementLoopAddLocation(NPC, -20.58, -7.93, -126.9, 2, 60)
	MovementLoopAddLocation(NPC, -31.51, -8.33, -125.52, 2, 0)
	MovementLoopAddLocation(NPC, -45.47, -8.48, -130.02, 2, 0)
	MovementLoopAddLocation(NPC, -53.64, -7.95, -141.83, 2, 0)
	MovementLoopAddLocation(NPC, -53.64, -7.95, -141.83, 2, 60)
	MovementLoopAddLocation(NPC, -51.39, -7.96, -153.89, 2, 0)
	MovementLoopAddLocation(NPC, -51.39, -7.96, -153.89, 2, 60)
end
