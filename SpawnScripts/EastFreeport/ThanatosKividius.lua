--[[
    Script Name    : SpawnScripts/EastFreeport/ThanatosKividius.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 03:10:22
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
    IdleAggressive(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
end