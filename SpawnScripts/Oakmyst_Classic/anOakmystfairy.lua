--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/anOakmystfairy.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.22 01:10:01
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseFairy1.lua")
dofile("SpawnScripts/Generic/CatalogueQuestUpdates.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

