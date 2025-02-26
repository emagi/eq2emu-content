--[[
    Script Name    : SpawnScripts/Stonestair/WensoSwindlehassle.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.16 12:02:09
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC, Spawn)
    IdleAngry(NPC)
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