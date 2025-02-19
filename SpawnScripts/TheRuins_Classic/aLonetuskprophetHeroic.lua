--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskprophetHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.03 04:07:55
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
    IdlePriest(NPC)
end

function respawn(NPC)
    spawn(NPC)
end
