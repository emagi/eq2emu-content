--[[
    Script Name    : SpawnScripts/Antonica/Sabotagesabotagefreeport1x71.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.17 08:07:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 1, 1,0)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end