--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothlookout.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 06:07:44
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    VoiceBox(NPC)
end

function VoiceBox(NPC)
 	local choice = MakeRandomInt(1,2)
 	if choice == 1 then    
    dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
 	elseif choice == 2 then 
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll1.lua")
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end