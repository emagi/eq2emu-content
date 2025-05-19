--[[
    Script Name    : SpawnScripts/NektulosClassic/atorrentbeaver.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.18 07:05:24
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