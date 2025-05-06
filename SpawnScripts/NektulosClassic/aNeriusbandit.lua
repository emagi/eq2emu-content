--[[
    Script Name    : SpawnScripts/NektulosClassic/aNeriusbandit.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.25 06:04:25
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    IdleBored(NPC)
    human(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end