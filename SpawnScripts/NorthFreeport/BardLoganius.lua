--[[
    Script Name    : SpawnScripts/NorthFreeport/BardLoganius.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.05 03:10:03
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC, Spawn)
    SetInfoStructString(NPC, "action_state", "cast_bard_stringed_persist")
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