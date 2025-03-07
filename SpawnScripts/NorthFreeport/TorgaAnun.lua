--[[
    Script Name    : SpawnScripts/NorthFreeport/TorgaAnun.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 08:06:31
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")	
    RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
    GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn, faction)
end