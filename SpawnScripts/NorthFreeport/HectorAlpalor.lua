--[[
    Script Name    : SpawnScripts/NorthFreeport/HectorAlpalor.lua
    Script Author  : Cynnar
    Script Date    : 2018.05.27 04:05:29
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericEcologyHail(NPC,Spawn,faction)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -47.24, -20.34, -286.72, 2, 0)
	MovementLoopAddLocation(NPC, -47.06, -20.34, -276.87, 2, 0)
	MovementLoopAddLocation(NPC, -47.06, -20.34, -276.87, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -45.21, -20.05, -262.84, 2, 0)
	MovementLoopAddLocation(NPC, -47.68, -20.34, -256.05, 2, 0)
	MovementLoopAddLocation(NPC, -47.68, -20.34, -256.05, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -44.13, -20.05, -261.98, 2, 0)
	MovementLoopAddLocation(NPC, -44.13, -20.05, -261.98, 2, 0)
	MovementLoopAddLocation(NPC, -59.57, -20.34, -259.72, 2, 0)
	MovementLoopAddLocation(NPC, -59.57, -20.34, -259.72, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -47.81, -20.05, -261.59, 2, 0)
	MovementLoopAddLocation(NPC, -46.44, -20.34, -251.91, 2, 0)
	MovementLoopAddLocation(NPC, -41.67, -20.34, -241.53, 2, 0)
	MovementLoopAddLocation(NPC, -41.67, -20.34, -241.53, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -51.58, -20.34, -243.81, 2, 0)
	MovementLoopAddLocation(NPC, -51.58, -20.34, -243.81, 2, 0)
	MovementLoopAddLocation(NPC, -46.51, -20.34, -250.33, 2, 0)
	MovementLoopAddLocation(NPC, -46.51, -20.34, -250.33, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -45.28, -20.34, -267.66, 2, 0)
	MovementLoopAddLocation(NPC, -40.98, -20.34, -273.78, 2, 0)
	MovementLoopAddLocation(NPC, -40.98, -20.34, -273.78, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -52.52, -20.34, -276.57, 2, 0)
	MovementLoopAddLocation(NPC, -52.52, -20.34, -276.57, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -48.05, -20.34, -280.36, 2, 0)
	MovementLoopAddLocation(NPC, -47.24, -20.09, -286.72, 2, 0)
	MovementLoopAddLocation(NPC, -47.24, -20.09, -286.72, 2, MakeRandomInt(8,15))
end
