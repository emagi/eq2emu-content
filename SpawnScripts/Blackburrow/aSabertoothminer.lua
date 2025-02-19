--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothminer.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 06:07:13
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua")
require "SpawnScripts/Generic/NPCModule"
 	
local TheChomper = 5696

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    AddTimer(NPC,math.random(2500,6000),"AttackRocks")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
if QuestIsComplete(Spawn, TheChomper) or HasItem(Spawn, 1285) then
RemoveLootItem(NPC, 1285) 
  end
end

function AttackRocks(NPC)
    if not IsInCombat(NPC) then
    PlayAnimation(NPC,10784)
    end
    AddTimer(NPC, math.random(3000,6000), "AttackRocks")
end 