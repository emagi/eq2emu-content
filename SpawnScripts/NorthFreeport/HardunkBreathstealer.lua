--[[
    Script Name    : SpawnScripts/NorthFreeport/HardunkBreathstealer.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.24 07:02:58
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericEcologyHail2(NPC,Spawn,faction)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    GenericEcologyCallout2(NPC, Spawn, faction)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -91.67, -39.17, -228.83, 2, 0)
	MovementLoopAddLocation(NPC, -93.14, -39.17, -226.58, 2, 0)
	MovementLoopAddLocation(NPC, -101.92, -39.19, -229.15, 2, 0)
	MovementLoopAddLocation(NPC, -100.6, -40.33, -235.81, 2, 0)
	MovementLoopAddLocation(NPC, -99.75, -40.33, -239.47, 2, 0)
	MovementLoopAddLocation(NPC, -102.53, -40.33, -241.87, 2, 0)
	MovementLoopAddLocation(NPC, -112.54, -40.33, -240.54, 2, 0)
	MovementLoopAddLocation(NPC, -118.61, -40.33, -232.5, 2, 0)
	MovementLoopAddLocation(NPC, -125.28, -40.33, -210.44, 2, 0)
	MovementLoopAddLocation(NPC, -110.61, -45.44, -200.03, 2, 0)
	MovementLoopAddLocation(NPC, -98.91, -46.06, -196.45, 2, 0)
	MovementLoopAddLocation(NPC, -98.91, -46.06, -196.45, 2, 8)
	MovementLoopAddLocation(NPC, -107.02, -46.06, -190.6, 2, 0)
	MovementLoopAddLocation(NPC, -107.02, -46.06, -190.6, 2, 8)
	MovementLoopAddLocation(NPC, -104.07, -46.04, -195.91, 2, 0)
	MovementLoopAddLocation(NPC, -107.46, -45.48, -198.65, 2, 0)
	MovementLoopAddLocation(NPC, -110.53, -45.45, -199.86, 2, 0)
	MovementLoopAddLocation(NPC, -122.06, -40.33, -205.05, 2, 0)
	MovementLoopAddLocation(NPC, -124.67, -40.33, -208.4, 2, 0)
	MovementLoopAddLocation(NPC, -124.3, -40.33, -214.68, 2, 0)
	MovementLoopAddLocation(NPC, -118.51, -40.33, -234.88, 2, 0)
	MovementLoopAddLocation(NPC, -110.6, -40.33, -241, 2, 0)
	MovementLoopAddLocation(NPC, -99.73, -40.33, -241.32, 2, 0)
	MovementLoopAddLocation(NPC, -101.15, -40.33, -235.52, 2, 0)
	MovementLoopAddLocation(NPC, -102.75, -39.17, -230.51, 2, 0)
	MovementLoopAddLocation(NPC, -97.81, -39.19, -228.13, 2, 0)
	MovementLoopAddLocation(NPC, -94.19, -39.18, -227.29, 2, 0)
	MovementLoopAddLocation(NPC, -91.67, -39.17, -228.83, 2, 0)
	MovementLoopAddLocation(NPC, -91.67, -39.17, -228.83, 2, 8)
end