--[[
    Script Name    : SpawnScripts/BigBend/ThrownAsideBones.lua
    Script Author  : torsten
    Script Date    : 2022.07.13 09:07:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC, 5632, 2)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end