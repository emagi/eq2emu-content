--[[
    Script Name    : SpawnScripts/NektulosClassic/aNeriusforeman.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.25 06:04:53
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    IdleAngry(NPC)
    human(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end