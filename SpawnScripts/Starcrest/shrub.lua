--[[
    Script Name    : SpawnScripts/Starcrest/shrub.lua
    Script Author  : Dorbin
    Script Date    : 2023.09.26 07:09:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
   SetRequiredQuest(NPC,241,5,1,1,1)
end

function respawn(NPC)
	spawn(NPC)
end