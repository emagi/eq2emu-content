--[[
    Script Name    : SpawnScripts/SummonerPets/SummonedWisp.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.10 04:05:05
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