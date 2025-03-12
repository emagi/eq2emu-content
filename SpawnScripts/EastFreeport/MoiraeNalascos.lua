--[[
    Script Name    : SpawnScripts/EastFreeport/MoiraeNalascos.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 03:10:13
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
	MovementLoopAddLocation(NPC, -212.14, -56.09, 64.85, 2, 0)
	MovementLoopAddLocation(NPC, -212.07, -56.07, 40.44, 2, 0)
	MovementLoopAddLocation(NPC, -212.07, -56.07, 40.44, 2, 20)
	MovementLoopAddLocation(NPC, -211.51, -56.07, 58.66, 2, 0)
	MovementLoopAddLocation(NPC, -204.41, -56.07, 77.15, 2, 0)
	MovementLoopAddLocation(NPC, -204.41, -56.07, 77.15, 2, 20)
	MovementLoopAddLocation(NPC, -209.68, -56.07, 65.1, 2, 0)
	MovementLoopAddLocation(NPC, -203.7, -56.07, 59.1, 2, 0)
	MovementLoopAddLocation(NPC, -203.7, -56.07, 59.1, 2, 20)
	MovementLoopAddLocation(NPC, -212.87, -56.07, 62.73, 2, 0)
	MovementLoopAddLocation(NPC, -226.4, -56.07, 59.76, 2, 0)
	MovementLoopAddLocation(NPC, -226.4, -56.07, 59.76, 2, 20)
	MovementLoopAddLocation(NPC, -213.12, -56.07, 58.78, 2, 0)
	MovementLoopAddLocation(NPC, -212.15, -56.07, 44.07, 2, 0)
	MovementLoopAddLocation(NPC, -212.15, -56.07, 44.07, 2, 20)
	MovementLoopAddLocation(NPC, -202.21, -56.07, 48.27, 2, 0)
	MovementLoopAddLocation(NPC, -202.21, -56.07, 48.27, 2, 20)
	MovementLoopAddLocation(NPC, -201.61, -56.07, 59.18, 2, 0)
	MovementLoopAddLocation(NPC, -201.61, -56.07, 59.18, 2, 20)
	MovementLoopAddLocation(NPC, -204.53, -56.07, 58.16, 2, 0)
	MovementLoopAddLocation(NPC, -202.53, -56.07, 18.19, 2, 0)
	MovementLoopAddLocation(NPC, -202.53, -56.07, 18.19, 2, 20)
	MovementLoopAddLocation(NPC, -203.19, -56.07, 38.26, 2, 0)
	MovementLoopAddLocation(NPC, -210.08, -56.07, 44.61, 2, 0)
	MovementLoopAddLocation(NPC, -208.6, -56.07, 62.6, 2, 0)
	MovementLoopAddLocation(NPC, -208.6, -56.07, 62.6, 2, 20)
	MovementLoopAddLocation(NPC, -207.1, -56.07, 59.23, 2, 0)
	MovementLoopAddLocation(NPC, -205.78, -56.07, 47.3, 2, 0)
	MovementLoopAddLocation(NPC, -202.19, -56.07, 42.69, 2, 0)
	MovementLoopAddLocation(NPC, -202.19, -56.07, 42.69, 2, 20)
	MovementLoopAddLocation(NPC, -204.57, -56.07, 43.89, 2, 0)
	MovementLoopAddLocation(NPC, -212.33, -56.07, 41.3, 2, 0)
	MovementLoopAddLocation(NPC, -212.33, -56.07, 41.3, 2, 20)
	MovementLoopAddLocation(NPC, -210.91, -56.07, 43.15, 2, 0)
	MovementLoopAddLocation(NPC, -209.38, -56.07, 59.44, 2, 0)
	MovementLoopAddLocation(NPC, -212.14, -56.09, 64.85, 2, 0)
	MovementLoopAddLocation(NPC, -212.14, -56.09, 64.85, 2, 20)
end