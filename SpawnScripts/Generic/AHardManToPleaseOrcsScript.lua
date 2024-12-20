--[[
    Script Name    : SpawnScripts/Generic/AHardManToPleaseOrcsScript.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.21 09:05:35
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Bloodskull(NPC)
    OrcArmorCommon(NPC)
	SetPlayerProximityFunction(NPC, 50, "InRange")
end

function InRange(NPC, Spawn)
    if IsPlayer(Spawn) then
        Attack(NPC, Spawn)
    end   
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
   