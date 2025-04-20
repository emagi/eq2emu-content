--[[
    Script Name    : SpawnScripts/Stormhold/acondensedmist.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.19 03:04:06
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 4, -4, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end