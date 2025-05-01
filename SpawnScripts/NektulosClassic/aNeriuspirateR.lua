--[[
    Script Name    : SpawnScripts/NektulosClassic/aNeriuspirateR.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.30 07:04:29
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    human(NPC)
    IdleAlert(NPC)
    RandomMovement(NPC, Spawn, 6, -6, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end