--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothminerRoam4.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.17 06:07:25
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    BlackburrowGnoll(NPC)
    RandomMovement(NPC, Spawn, 4, -4, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end