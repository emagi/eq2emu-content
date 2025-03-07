--[[
    Script Name    : SpawnScripts/NorthFreeport/IulusUVas.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 07:06:28
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    AddTimer(NPC, 6000, "waypoints")
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
    IdleAggressive(NPC)
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
	MovementLoopAddLocation(NPC, -112.35, -40.33, -252.82, 2, 0)
	MovementLoopAddLocation(NPC, -114.89, -40.33, -250.74, 2, 0)
	MovementLoopAddLocation(NPC, -114.89, -40.33, -250.74, 2, 60)
	MovementLoopAddLocation(NPC, -114.89, -40.33, -250.74, 2, 0)
	MovementLoopAddLocation(NPC, -113.61, -40.33, -253.89, 2, 0)
	MovementLoopAddLocation(NPC, -113.61, -40.33, -253.89, 2, 60)
	MovementLoopAddLocation(NPC, -113.61, -40.33, -253.89, 2, 0)
	MovementLoopAddLocation(NPC, -115.45, -40.33, -248.33, 2, 0)
	MovementLoopAddLocation(NPC, -113.17, -40.33, -232.11, 2, 0)
	MovementLoopAddLocation(NPC, -113.17, -40.33, -232.11, 2, 60)
	MovementLoopAddLocation(NPC, -113.17, -40.33, -232.11, 2, 0)
	MovementLoopAddLocation(NPC, -117.64, -40.33, -244.48, 2, 0)
	MovementLoopAddLocation(NPC, -117.64, -40.33, -244.48, 2, 60)
	MovementLoopAddLocation(NPC, -117.64, -40.33, -244.48, 2, 0)
	MovementLoopAddLocation(NPC, -111.93, -40.33, -247.05, 2, 0)
	MovementLoopAddLocation(NPC, -103.17, -40.36, -249.49, 2, 0)
	MovementLoopAddLocation(NPC, -103.17, -40.36, -249.49, 2, 60)
	MovementLoopAddLocation(NPC, -103.17, -40.36, -249.49, 2, 0)
	MovementLoopAddLocation(NPC, -100.72, -40.36, -249.13, 2, 0)
	MovementLoopAddLocation(NPC, -106.49, -40.36, -252.15, 2, 0)
	MovementLoopAddLocation(NPC, -112.35, -40.33, -252.82, 2, 0)
	MovementLoopAddLocation(NPC, -112.35, -40.33, -252.82, 2, 60)
	MovementLoopAddLocation(NPC, -112.35, -40.33, -252.82, 2, 0)
end
