--[[
    Script Name    : SpawnScripts/EastFreeport/SyrinisHGez.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 03:10:37
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
    RandomMovement(NPC, Spawn, 8, -8, 2, 25, 35)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
end