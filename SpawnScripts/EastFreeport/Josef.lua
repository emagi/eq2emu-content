--[[
    Script Name    : SpawnScripts/EastFreeport/Josef.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 03:10:46
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
    AddTimer(NPC, 60000, "waypoints")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -212.61, -56.08, -62.01, 2, 0)
	MovementLoopAddLocation(NPC, -210.74, -56.07, -60.15, 2, 0)
	MovementLoopAddLocation(NPC, -211.12, -56.07, -45.49, 2, 0)
	MovementLoopAddLocation(NPC, -212.73, -56.07, -44.68, 2, 0)
	MovementLoopAddLocation(NPC, -212.73, -56.07, -44.68, 2, 60)
	MovementLoopAddLocation(NPC, -210.89, -56.07, -42.92, 2, 0)
	MovementLoopAddLocation(NPC, -211.4, -56.07, -10.56, 2, 0)
	MovementLoopAddLocation(NPC, -208.17, -56.07, -2.87, 2, 0)
	MovementLoopAddLocation(NPC, -208.1, -56.07, 8.85, 2, 0)
	MovementLoopAddLocation(NPC, -213.41, -56.07, 17.83, 2, 0)
	MovementLoopAddLocation(NPC, -213.41, -56.07, 17.83, 2, 60)
	MovementLoopAddLocation(NPC, -212.09, -56.07, 19.45, 2, 0)
	MovementLoopAddLocation(NPC, -212.04, -56.07, 56.24, 2, 0)
	MovementLoopAddLocation(NPC, -208.91, -56.07, 63.87, 2, 0)
	MovementLoopAddLocation(NPC, -208.91, -56.07, 63.87, 2, 60)
	MovementLoopAddLocation(NPC, -207.58, -56.07, 62.53, 2, 0)
	MovementLoopAddLocation(NPC, -207.97, -56.07, 10.91, 2, 0)
	MovementLoopAddLocation(NPC, -222.77, -56.09, 8.15, 2, 0)
	MovementLoopAddLocation(NPC, -222.77, -56.09, 8.15, 2, 60)
	MovementLoopAddLocation(NPC, -211.66, -56.07, 9.66, 2, 0)
	MovementLoopAddLocation(NPC, -209.91, -56.07, 6.75, 2, 0)
	MovementLoopAddLocation(NPC, -208.12, -56.07, -1.96, 2, 0)
	MovementLoopAddLocation(NPC, -208.43, -56.07, -45.48, 2, 0)
	MovementLoopAddLocation(NPC, -213.36, -56.07, -47.2, 2, 0)
	MovementLoopAddLocation(NPC, -213.36, -56.07, -47.2, 2, 0)
	MovementLoopAddLocation(NPC, -208.96, -56.07, -53.49, 2, 0)
	MovementLoopAddLocation(NPC, -206.76, -56.07, -83.27, 2, 0)
	MovementLoopAddLocation(NPC, -206.76, -56.07, -83.27, 2, 60)
	MovementLoopAddLocation(NPC, -208.23, -56.07, -66.97, 2, 0)
	MovementLoopAddLocation(NPC, -212.61, -56.07, -62.01, 2, 0)
	MovementLoopAddLocation(NPC, -212.61, -56.07, -62.01, 2, 60)
end
