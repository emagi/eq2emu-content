--[[
    Script Name    : SpawnScripts/EastFreeport/PutadBloodrinker.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 04:10:22
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    troll(NPC)
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
	MovementLoopAddLocation(NPC, -207.65, -56.08, 104, 2, 0)
	MovementLoopAddLocation(NPC, -204.12, -56.07, 101.23, 2, 0)
	MovementLoopAddLocation(NPC, -202.54, -56.07, 90.14, 2, 0)
	MovementLoopAddLocation(NPC, -202.32, -56.07, 58.11, 2, 0)
	MovementLoopAddLocation(NPC, -204.94, -56.07, 2.21, 2, 0)
	MovementLoopAddLocation(NPC, -209.64, -56.07, -2.76, 2, 0)
	MovementLoopAddLocation(NPC, -211.96, -56.07, -3.39, 2, 0)
	MovementLoopAddLocation(NPC, -215.5, -55.03, -3.61, 2, 0)
	MovementLoopAddLocation(NPC, -223.72, -55.09, -3.89, 2, 0)
	MovementLoopAddLocation(NPC, -223.72, -55.09, -3.89, 2, 0)
	MovementLoopAddLocation(NPC, -223.72, -55.09, -3.89, 2, 2)
	MovementLoopAddLocation(NPC, -229.87, -56.17, -3.77, 2, 0)
	MovementLoopAddLocation(NPC, -231.88, -56.13, -8.3, 2, 0)
	MovementLoopAddLocation(NPC, -232.16, -55.17, -10.91, 2, 0)
	MovementLoopAddLocation(NPC, -232.37, -55.18, -16.48, 2, 0)
	MovementLoopAddLocation(NPC, -232.37, -55.18, -16.48, 2, 60)
	MovementLoopAddLocation(NPC, -231.84, -55.17, -11.36, 2, 0)
	MovementLoopAddLocation(NPC, -231.53, -56.13, -7.92, 2, 0)
	MovementLoopAddLocation(NPC, -230.18, -56.17, -3.67, 2, 0)
	MovementLoopAddLocation(NPC, -228.37, -56.16, -3.64, 2, 0)
	MovementLoopAddLocation(NPC, -226.54, -55.18, -3.79, 2, 0)
	MovementLoopAddLocation(NPC, -226.54, -55.18, -3.79, 2, 0)
	MovementLoopAddLocation(NPC, -226.54, -55.18, -3.79, 2, 2)
	MovementLoopAddLocation(NPC, -216.37, -55.09, -3.91, 2, 0)
	MovementLoopAddLocation(NPC, -211.11, -56.07, -3.97, 2, 0)
	MovementLoopAddLocation(NPC, -206.11, -56.07, -9.8, 2, 0)
	MovementLoopAddLocation(NPC, -204.38, -56.07, -40.1, 2, 0)
	MovementLoopAddLocation(NPC, -209.23, -56.07, -59.96, 2, 0)
	MovementLoopAddLocation(NPC, -212.51, -56.07, -61.81, 2, 0)
	MovementLoopAddLocation(NPC, -212.51, -56.07, -61.81, 2, 60)
	MovementLoopAddLocation(NPC, -210.54, -56.07, -60.31, 2, 0)
	MovementLoopAddLocation(NPC, -208.34, -56.07, -52.4, 2, 0)
	MovementLoopAddLocation(NPC, -206.39, -56.07, 52.76, 2, 0)
	MovementLoopAddLocation(NPC, -201.23, -56.07, 63.22, 2, 0)
	MovementLoopAddLocation(NPC, -201.87, -56.07, 83.52, 2, 0)
	MovementLoopAddLocation(NPC, -204.5, -56.07, 93.46, 2, 0)
	MovementLoopAddLocation(NPC, -204.47, -56.07, 99.6, 2, 0)
	MovementLoopAddLocation(NPC, -207.65, -56.08, 104, 2, 0)
	MovementLoopAddLocation(NPC, -207.65, -56.08, 104, 2, 60)
end
