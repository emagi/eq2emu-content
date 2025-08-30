--[[
    Script Name    : SpawnScripts/NorthFreeport/GuardUlaka.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.25 05:01:46
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
	MovementLoopAddLocation(NPC, -28.4, -8.37, -157.81, 2, 0)
	MovementLoopAddLocation(NPC, -24.06, -10.8, -176.17, 2, 0)
	MovementLoopAddLocation(NPC, -44.63, -11.65, -180.77, 2, 0)
	MovementLoopAddLocation(NPC, -38.23, -17.02, -203.79, 2, 0)
	MovementLoopAddLocation(NPC, -41.19, -20.08, -223.05, 2, 0)
	MovementLoopAddLocation(NPC, -58.66, -20.05, -234.12, 2, 0)
	MovementLoopAddLocation(NPC, -58.58, -20.05, -247.62, 2, 0)
	MovementLoopAddLocation(NPC, -51.87, -20.05, -259.79, 2, 0)
	MovementLoopAddLocation(NPC, -52.26, -20.05, -264.21, 2, 0)
	MovementLoopAddLocation(NPC, -57.96, -20.05, -274.13, 2, 0)
	MovementLoopAddLocation(NPC, -57.8, -20.05, -289.25, 2, 0)
	MovementLoopAddLocation(NPC, -46.07, -20.05, -291.32, 2, 0)
	MovementLoopAddLocation(NPC, -46.56, -20.05, -310.02, 2, 0)
	MovementLoopAddLocation(NPC, -47.78, -27.31, -336.65, 2, 0)
	MovementLoopAddLocation(NPC, -47.38, -27.3, -328.25, 2, 0)
	MovementLoopAddLocation(NPC, -46.33, -20.08, -310.38, 2, 0)
	MovementLoopAddLocation(NPC, -45.61, -20.05, -295.9, 2, 0)
	MovementLoopAddLocation(NPC, -34.99, -20.05, -289.98, 2, 0)
	MovementLoopAddLocation(NPC, -35.98, -20.05, -270.79, 2, 0)
	MovementLoopAddLocation(NPC, -39.36, -20.05, -264.13, 2, 0)
	MovementLoopAddLocation(NPC, -39.15, -20.05, -258.09, 2, 0)
	MovementLoopAddLocation(NPC, -36.26, -20.05, -252.89, 2, 0)
	MovementLoopAddLocation(NPC, -35.18, -20.1, -220.28, 2, 0)
	MovementLoopAddLocation(NPC, -45, -11.66, -180.81, 2, 0)
	MovementLoopAddLocation(NPC, -24.76, -10.79, -176.1, 2, 0)
end


