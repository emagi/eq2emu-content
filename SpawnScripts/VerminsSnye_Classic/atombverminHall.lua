--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/atombverminHall.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.05 05:09:19
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