--[[
    Script Name    : SpawnScripts/NektulosClassic/aforestleaper.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.27 03:04:21
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