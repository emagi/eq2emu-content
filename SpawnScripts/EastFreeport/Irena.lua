--[[
    Script Name    : SpawnScripts/EastFreeport/Irena.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 03:10:15
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
    IdleSneaky(NPC)
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
	MovementLoopAddLocation(NPC, -213.31, -56.07, 2.12, 2, 0)
	MovementLoopAddLocation(NPC, -211.71, -56.07, 2.72, 2, 0)
	MovementLoopAddLocation(NPC, -211.31, -56.07, 12.69, 2, 0)
	MovementLoopAddLocation(NPC, -214.03, -56.07, 13.15, 2, 0)
	MovementLoopAddLocation(NPC, -214.03, -56.07, 13.15, 2, 60)
	MovementLoopAddLocation(NPC, -211.95, -56.07, 12.47, 2, 0)
	MovementLoopAddLocation(NPC, -211.8, -56.07, -9.16, 2, 0)
	MovementLoopAddLocation(NPC, -213.82, -56.07, -9.61, 2, 0)
	MovementLoopAddLocation(NPC, -213.82, -56.07, -9.61, 2, 60)
	MovementLoopAddLocation(NPC, -211.26, -56.07, -9.06, 2, 0)
	MovementLoopAddLocation(NPC, -211.08, -56.07, -5.47, 2, 0)
	MovementLoopAddLocation(NPC, -215.14, -54.99, -5.87, 2, 0)
	MovementLoopAddLocation(NPC, -217.99, -55.09, -5.89, 2, 0)
	MovementLoopAddLocation(NPC, -218.05, -55.09, -7.8, 2, 0)
	MovementLoopAddLocation(NPC, -218.05, -55.09, -7.8, 2, 60)
	MovementLoopAddLocation(NPC, -217.87, -55.09, -5.18, 2, 0)
	MovementLoopAddLocation(NPC, -210.92, -56.07, -5.3, 2, 0)
	MovementLoopAddLocation(NPC, -211.01, -56.07, 1.3, 2, 0)
	MovementLoopAddLocation(NPC, -213.31, -56.07, 2.12, 2, 0)
	MovementLoopAddLocation(NPC, -213.31, -56.07, 2.12, 2, 60)
end
