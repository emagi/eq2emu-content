--[[
    Script Name    : SpawnScripts/EastFreeport/GuardCelatiusCorbulo.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.22 05:01:25
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    AddTimer(NPC, 6000, "waypoints")
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -65.31, -23.87, 81.24, 2, 0)
	MovementLoopAddLocation(NPC, -77.06, -27.03, 84.73, 2, 0)
	MovementLoopAddLocation(NPC, -99.03, -32.02, 86.34, 2, 0)
	MovementLoopAddLocation(NPC, -124.38, -37.32, 87.56, 2, 0)
	MovementLoopAddLocation(NPC, -140.93, -40.3, 84.38, 2, 0)
	MovementLoopAddLocation(NPC, -147.71, -41.91, 79.84, 2, 0)
	MovementLoopAddLocation(NPC, -152.89, -43.2, 74.18, 2, 0)
	MovementLoopAddLocation(NPC, -156.4, -44.62, 67.13, 2, 0)
	MovementLoopAddLocation(NPC, -156.4, -44.62, 67.13, 2, 0)
	MovementLoopAddLocation(NPC, -156.37, -46.56, 45.42, 2, 0)
	MovementLoopAddLocation(NPC, -155.36, -49.66, 6.45, 2, 0)
	MovementLoopAddLocation(NPC, -160.98, -51.22, -5.74, 2, 0)
	MovementLoopAddLocation(NPC, -170.99, -53.58, -13.6, 2, 0)
	MovementLoopAddLocation(NPC, -190.23, -55.91, -16.57, 2, 0)
	MovementLoopAddLocation(NPC, -179.28, -55.27, -15.49, 2, 0)
	MovementLoopAddLocation(NPC, -162.27, -51.4, -6.21, 2, 0)
	MovementLoopAddLocation(NPC, -156.77, -50.03, 2.73, 2, 0)
	MovementLoopAddLocation(NPC, -157, -46.89, 41.4, 2, 0)
	MovementLoopAddLocation(NPC, -157.59, -44.79, 66.18, 2, 0)
	MovementLoopAddLocation(NPC, -152.55, -42.92, 76.42, 2, 0)
	MovementLoopAddLocation(NPC, -140.9, -40.27, 84.6, 2, 0)
	MovementLoopAddLocation(NPC, -126.67, -37.68, 87.1, 2, 0)
	MovementLoopAddLocation(NPC, -92.75, -30.6, 86.1, 2, 0)
	MovementLoopAddLocation(NPC, -80.92, -27.9, 84.99, 2, 0)
	MovementLoopAddLocation(NPC, -65.32, -23.88, 81.25, 2, 0)
end
