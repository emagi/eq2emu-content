--[[
    Script Name    : SpawnScripts/Longshadow/aspiderhatchling1.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.15 03:10:50
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