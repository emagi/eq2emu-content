--[[
    Script Name    : SpawnScripts/SummonerPets/TellurianRecruit.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.18 11:02:22
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