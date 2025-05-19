--[[
    Script Name    : SpawnScripts/NektulosClassic/adeadlytreesnake.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.18 07:05:20
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end