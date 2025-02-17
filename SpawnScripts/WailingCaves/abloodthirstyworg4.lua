--[[
    Script Name    : SpawnScripts/WailingCaves/abloodthirstyworg4.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.08 08:07:01
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

