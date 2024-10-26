--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/testarabidshriller.lua
    Script Author  : Neifion
    Script Date    : 2024.04.26 06:04:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end