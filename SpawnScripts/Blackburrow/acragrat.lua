--[[
    Script Name    : SpawnScripts/Blackburrow/acragrat.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.09 11:07:56
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

