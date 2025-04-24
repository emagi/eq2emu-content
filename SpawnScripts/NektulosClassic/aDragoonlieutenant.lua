--[[
    Script Name    : SpawnScripts/NektulosClassic/aDragoonlieutenant.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.24 07:04:01
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