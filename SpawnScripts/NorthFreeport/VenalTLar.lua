--[[
    Script Name    : SpawnScripts/NorthFreeport/VenalTLar.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.02 08:03:41
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    IdleAggressive(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
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