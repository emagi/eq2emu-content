--[[
    Script Name    : SpawnScripts/NektulosClassic/aNeriusseer.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.25 06:04:35
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    human(NPC)
    IdleAlert(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end