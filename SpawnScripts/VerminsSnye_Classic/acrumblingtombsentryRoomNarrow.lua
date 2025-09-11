--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombsentryRoomNarrow.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.07 04:09:43
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 3, -3, 2, 8, 15)
    RandomWeapons(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end