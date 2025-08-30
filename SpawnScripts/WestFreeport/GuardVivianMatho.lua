--[[
    Script Name    : SpawnScripts/WestFreeport/GuardVivianMatho.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.17 04:01:50
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
	MovementLoopAddLocation(NPC, 137.01, -7.05, 139.62, 2, 0)
	MovementLoopAddLocation(NPC, 138.51, -7.05, 141.18, 2, 0)
	MovementLoopAddLocation(NPC, 142.98, -10.36, 145.66, 2, 0)
	MovementLoopAddLocation(NPC, 144.73, -10.49, 147.16, 2, 0)
	MovementLoopAddLocation(NPC, 146.31, -10.49, 145.61, 2, 0)
	MovementLoopAddLocation(NPC, 153.42, -15.81, 138.52, 2, 0)
	MovementLoopAddLocation(NPC, 156.52, -16.1, 134.75, 2, 0)
	MovementLoopAddLocation(NPC, 164.33, -10.49, 127.53, 2, 0)
	MovementLoopAddLocation(NPC, 166.16, -10.49, 125.72, 2, 0)
	MovementLoopAddLocation(NPC, 164.44, -10.28, 124.09, 2, 0)
	MovementLoopAddLocation(NPC, 159.93, -7.05, 119.94, 2, 0)
	MovementLoopAddLocation(NPC, 158.19, -7.05, 118.11, 2, 0)
	MovementLoopAddLocation(NPC, 154.22, -7.05, 122.33, 2, 0)
	MovementLoopAddLocation(NPC, 143.13, -7.05, 133.48, 2, 0)
end