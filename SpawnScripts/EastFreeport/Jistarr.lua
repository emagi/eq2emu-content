--[[
    Script Name    : SpawnScripts/EastFreeport/Jistarr.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 04:10:06
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
    IdleAggressive(NPC)
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
	MovementLoopAddLocation(NPC, -201.86, -58.87, -119.98, 2, 0)
	MovementLoopAddLocation(NPC, -195.51, -58.87, -116.76, 2, 0)
	MovementLoopAddLocation(NPC, -188.52, -55.83, -112.17, 2, 0)
	MovementLoopAddLocation(NPC, -185.23, -56.47, -108.22, 2, 0)
	MovementLoopAddLocation(NPC, -193.21, -56.53, -98.64, 2, 0)
	MovementLoopAddLocation(NPC, -194.6, -56.53, -92.8, 2, 0)
	MovementLoopAddLocation(NPC, -195.11, -56.19, -29.42, 2, 0)
	MovementLoopAddLocation(NPC, -194.5, -56.6, 54.81, 2, 0)
	MovementLoopAddLocation(NPC, -205.28, -56.07, 61.17, 2, 0)
	MovementLoopAddLocation(NPC, -298.88, -56.07, 62.5, 2, 0)
	MovementLoopAddLocation(NPC, -304.12, -56.07, 59.07, 2, 0)
	MovementLoopAddLocation(NPC, -304.12, -56.07, 59.07, 2, 60)
	MovementLoopAddLocation(NPC, -301.4, -56.07, 61.83, 2, 0)
	MovementLoopAddLocation(NPC, -212.93, -56.07, 60.91, 2, 0)
	MovementLoopAddLocation(NPC, -195.3, -56.34, 47.45, 2, 0)
	MovementLoopAddLocation(NPC, -195.35, -56.13, 6.99, 2, 0)
	MovementLoopAddLocation(NPC, -195.07, -56.52, -85.04, 2, 0)
	MovementLoopAddLocation(NPC, -193.17, -56.54, -96.68, 2, 0)
	MovementLoopAddLocation(NPC, -186.45, -56.42, -109.36, 2, 0)
	MovementLoopAddLocation(NPC, -188.58, -55.83, -111.96, 2, 0)
	MovementLoopAddLocation(NPC, -195.18, -58.78, -116.79, 2, 0)
	MovementLoopAddLocation(NPC, -201.86, -58.87, -119.98, 2, 0)
	MovementLoopAddLocation(NPC, -201.86, -58.87, -119.98, 2, 60)
end
