--[[
    Script Name    : SpawnScripts/EastFreeport/TobanCogscamper.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 04:10:31
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
    IdleTinker(NPC)
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
	MovementLoopAddLocation(NPC, -229.48, -56.07, 71.43, 2, 0)
	MovementLoopAddLocation(NPC, -229.29, -56.07, 59.87, 2, 0)
	MovementLoopAddLocation(NPC, -229.29, -56.07, 59.87, 2, 60)
	MovementLoopAddLocation(NPC, -228.7, -56.07, 61.61, 2, 0)
	MovementLoopAddLocation(NPC, -212.86, -56.07, 62.55, 2, 0)
	MovementLoopAddLocation(NPC, -209.78, -56.07, 53.06, 2, 0)
	MovementLoopAddLocation(NPC, -209.11, -56.07, 20.7, 2, 0)
	MovementLoopAddLocation(NPC, -213.45, -56.07, 16.46, 2, 0)
	MovementLoopAddLocation(NPC, -213.45, -56.07, 16.46, 2, 60)
	MovementLoopAddLocation(NPC, -210.07, -56.07, 15.36, 2, 0)
	MovementLoopAddLocation(NPC, -208.64, -56.07, 5.62, 2, 0)
	MovementLoopAddLocation(NPC, -209.53, -56.07, -65.21, 2, 0)
	MovementLoopAddLocation(NPC, -209.53, -56.07, -65.21, 2, 60)
	MovementLoopAddLocation(NPC, -209.45, -56.07, -54.08, 2, 0)
	MovementLoopAddLocation(NPC, -211.86, -56.07, -49.08, 2, 0)
	MovementLoopAddLocation(NPC, -213.63, -56.07, -48.13, 2, 0)
	MovementLoopAddLocation(NPC, -213.63, -56.07, -48.13, 2, 60)
	MovementLoopAddLocation(NPC, -211.42, -56.07, -47.79, 2, 0)
	MovementLoopAddLocation(NPC, -210.45, -56.07, -23.78, 2, 0)
	MovementLoopAddLocation(NPC, -210.33, -56.07, 10.3, 2, 0)
	MovementLoopAddLocation(NPC, -213.93, -56.07, 14.88, 2, 0)
	MovementLoopAddLocation(NPC, -213.93, -56.07, 14.88, 2, 60)
	MovementLoopAddLocation(NPC, -210.42, -56.07, 15.42, 2, 0)
	MovementLoopAddLocation(NPC, -210.02, -56.07, 53.02, 2, 0)
	MovementLoopAddLocation(NPC, -213.78, -56.07, 60.67, 2, 0)
	MovementLoopAddLocation(NPC, -217.01, -56.07, 70.69, 2, 0)
	MovementLoopAddLocation(NPC, -217.01, -56.07, 70.69, 2, 60)
	MovementLoopAddLocation(NPC, -217.25, -56.07, 67.39, 2, 0)
	MovementLoopAddLocation(NPC, -226.56, -56.07, 67.98, 2, 0)
	MovementLoopAddLocation(NPC, -229.48, -56.09, 71.43, 2, 0)
	MovementLoopAddLocation(NPC, -229.48, -56.09, 71.43, 2, 60)
end