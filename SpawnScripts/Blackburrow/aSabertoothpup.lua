--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothpup.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.10 06:07:24
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    BlackburrowGnoll(NPC)
end

function respawn(NPC)
	spawn(NPC)
end