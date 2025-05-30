--[[
    Script Name    : SpawnScripts/NektulosClassic/aPaintedmistgrinninW.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.29 09:05:04
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end