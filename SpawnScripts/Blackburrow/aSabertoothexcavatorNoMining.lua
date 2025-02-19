--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothexcavatorNoMining.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.04.28 09:04:42
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function AttackRocks(NPC)
    if not IsInCombat(NPC) then
    PlayAnimation(NPC,10784)
    end
    AddTimer(NPC, math.random(3000,6000), "AttackRocks")
end 