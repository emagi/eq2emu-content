--[[
    Script Name    : SpawnScripts/Blackburrow/ablightfangspiderMove3.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.14 07:08:25
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 3, -3, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end