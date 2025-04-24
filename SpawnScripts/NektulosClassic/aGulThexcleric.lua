--[[
    Script Name    : SpawnScripts/NektulosClassic/aGulThexcleric.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.24 07:04:09
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end