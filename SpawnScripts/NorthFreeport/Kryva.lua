--[[
    Script Name    : SpawnScripts/NorthFreeport/Kryva.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.02 08:03:38
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
    AddTimer(NPC, 6000, "waypoints")
    IdleSneaky(NPC)
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
	MovementLoopAddLocation(NPC, -43.67, -24.44, -50.31, 2, 0)
	MovementLoopAddLocation(NPC, -46.83, -24.44, -49.62, 2, 0)
	MovementLoopAddLocation(NPC, -50.61, -24.45, -57.42, 2, 0)
	MovementLoopAddLocation(NPC, -50.61, -24.45, -57.42, 2, 60)
	MovementLoopAddLocation(NPC, -47.01, -24.45, -53.64, 2, 0)
	MovementLoopAddLocation(NPC, -44.13, -24.45, -53.16, 2, 0)
	MovementLoopAddLocation(NPC, -44.13, -24.45, -53.16, 2, 60)
	MovementLoopAddLocation(NPC, -45.85, -24.44, -47.6, 2, 0)
	MovementLoopAddLocation(NPC, -47.4, -24.44, -33.34, 2, 0)
	MovementLoopAddLocation(NPC, -47.4, -24.44, -33.34, 2, 60)
	MovementLoopAddLocation(NPC, -44.53, -24.44, -34.4, 2, 0)
	MovementLoopAddLocation(NPC, -44.53, -24.44, -34.4, 2, 60)
	MovementLoopAddLocation(NPC, -40.77, -24.44, -47.61, 2, 0)
	MovementLoopAddLocation(NPC, -38.6, -24.44, -48.6, 2, 0)
	MovementLoopAddLocation(NPC, -38.6, -24.44, -48.6, 2, 60)
	MovementLoopAddLocation(NPC, -41.87, -24.44, -46.93, 2, 0)
	MovementLoopAddLocation(NPC, -41.87, -24.44, -46.93, 2, 60)
	MovementLoopAddLocation(NPC, -49.3, -24.37, -37.82, 2, 0)
	MovementLoopAddLocation(NPC, -49.3, -24.37, -37.82, 2, 60)
	MovementLoopAddLocation(NPC, -43.67, -24.44, -50.31, 2, 0)
	MovementLoopAddLocation(NPC, -43.67, -24.44, -50.31, 2, 60)
end
