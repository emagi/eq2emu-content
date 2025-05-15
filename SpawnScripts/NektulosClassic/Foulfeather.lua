--[[
    Script Name    : SpawnScripts/NektulosClassic/Foulfeather.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.14 12:05:04
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end