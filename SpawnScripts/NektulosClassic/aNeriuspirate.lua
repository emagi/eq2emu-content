--[[
    Script Name    : SpawnScripts/NektulosClassic/aNeriuspirate.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.30 07:04:39
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