--[[
    Script Name    : SpawnScripts/Stormhold/abonebloodarcanist.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.18 04:04:11
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