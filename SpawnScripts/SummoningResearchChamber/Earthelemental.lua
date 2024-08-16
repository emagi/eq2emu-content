--[[
    Script Name    : SpawnScripts/SummoningResearchChamber/Earthelemental.lua
    Script Author  : dorbin
    Script Date    : 2024.08.10 08:08:28
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseGolem1.lua")
require "SpawnScripts/Generic/CombatModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    SetSpawnAnimation(NPC, 13016)
end


function respawn(NPC)
	spawn(NPC)
end


