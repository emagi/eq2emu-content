--[[
    Script Name    : SpawnScripts/Firemyst1/acharredoak.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.21 07:02:51
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