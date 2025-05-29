--[[
    Script Name    : SpawnScripts/NektulosClassic/obscuredspiderling.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.28 09:05:31
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