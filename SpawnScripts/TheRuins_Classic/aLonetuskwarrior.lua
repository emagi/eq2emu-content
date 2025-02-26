--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskwarrior.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.03 02:07:07
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/LoneTusk2.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomWeapons(NPC)
    OrcArmorCommon(NPC)
    Lonetusk(NPC)
    IdleAggressive(NPC)
end

function respawn(NPC)
    spawn(NPC)
end
