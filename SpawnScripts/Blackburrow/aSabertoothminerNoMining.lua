--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothminerNoMining.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.04.26 09:04:19
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua")
require "SpawnScripts/Generic/NPCModule" 

local TheChomper = 5696

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
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