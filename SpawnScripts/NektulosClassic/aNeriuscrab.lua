--[[
    Script Name    : SpawnScripts/NektulosClassic/aNeriuscrab.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.21 12:04:56
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end