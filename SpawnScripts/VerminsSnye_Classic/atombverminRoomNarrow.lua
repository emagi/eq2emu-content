--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/atombverminRoomNarrow.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.16 08:09:58
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 2, -2, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end