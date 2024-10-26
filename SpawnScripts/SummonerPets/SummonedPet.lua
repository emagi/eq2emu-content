--[[
    Script Name    : SpawnScripts/SummonerPets/SummonedPet.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.07.09 09:07:09
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    PetModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

