--[[
    Script Name    : SpawnScripts/Freeport/Lrak.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.14 08:07:49
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
    MovementLoopAddLocation(NPC, -157.92, -53.12, -291.66, 2, 0)
    MovementLoopAddLocation(NPC, -155.59, -53.12, -313.87, 2, 0)
    MovementLoopAddLocation(NPC, -141.00, -53.12, -332.94, 2, 0)
    MovementLoopAddLocation(NPC, -139.23, -53.12, -343.70, 2, 0)
    MovementLoopAddLocation(NPC, -140.14, -53.12, -349.81, 2, 7)
    MovementLoopAddLocation(NPC, -139.23, -53.12, -343.70, 2, 0)
    MovementLoopAddLocation(NPC, -141.00, -53.12, -332.94, 2, 0)
    MovementLoopAddLocation(NPC, -155.59, -53.12, -313.87, 2, 0)
    MovementLoopAddLocation(NPC, -157.92, -53.12, -291.66, 2, 7)
end