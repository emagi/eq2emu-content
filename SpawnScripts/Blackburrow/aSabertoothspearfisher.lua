--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothspearfisher.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 06:07:59
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    if GetDifficulty(NPC) == 6 then
        AttackAnim(NPC)
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC,Spawn)
    SpawnSet(NPC, "visual_state", 0)
end

function AttackAnim(NPC,Spawn)
    if IsInCombat(NPC) == false then
        PlayFlavor(NPC,"","","attack",0,0)
    end
    AddTimer(NPC, 6000, "AttackAnim")
end