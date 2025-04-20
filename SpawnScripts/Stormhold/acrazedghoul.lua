--[[
    Script Name    : SpawnScripts/Stormhold/acrazedghoul.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.19 03:04:03
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