--[[
    Script Name    : SpawnScripts/NorthFreeport/EnyoVivaron.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 07:06:12
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    AddTimer(NPC, 6000, "waypoints")
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -57.24, -20.06, -291.31, 2, 0)
	MovementLoopAddLocation(NPC, -58.51, -20.05, -273.96, 2, 0)
	MovementLoopAddLocation(NPC, -62.07, -20.03, -272.7, 2, 0)
	MovementLoopAddLocation(NPC, -69.14, -20.05, -273.11, 2, 0)
	MovementLoopAddLocation(NPC, -73.75, -20.05, -269.7, 2, 0)
	MovementLoopAddLocation(NPC, -75.74, -20.05, -263.29, 2, 0)
	MovementLoopAddLocation(NPC, -73.4, -20.05, -254.83, 2, 0)
	MovementLoopAddLocation(NPC, -67.05, -20.05, -252.25, 2, 0)
	MovementLoopAddLocation(NPC, -63.29, -20.05, -251.39, 2, 0)
	MovementLoopAddLocation(NPC, -62.02, -20.04, -232.19, 2, 0)
	MovementLoopAddLocation(NPC, -62.02, -20.04, -232.19, 2, 8)
	MovementLoopAddLocation(NPC, -61.36, -19.99, -247.31, 2, 0)
	MovementLoopAddLocation(NPC, -55.03, -20.05, -253.38, 2, 0)
	MovementLoopAddLocation(NPC, -52.62, -20.05, -257.67, 2, 0)
	MovementLoopAddLocation(NPC, -52.13, -20.05, -260.64, 2, 0)
	MovementLoopAddLocation(NPC, -43.19, -20.05, -261.53, 2, 0)
	MovementLoopAddLocation(NPC, -35.72, -20.05, -270.45, 2, 0)
	MovementLoopAddLocation(NPC, -35.6, -20.05, -289.76, 2, 0)
	MovementLoopAddLocation(NPC, -57.24, -20.06, -291.31, 2, 0)
	MovementLoopAddLocation(NPC, -57.24, -20.06, -291.31, 2, 8)
end
