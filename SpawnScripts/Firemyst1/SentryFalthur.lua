--[[
    Script Name    : SpawnScripts/Firemyst1/SentryFalthur.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.21 08:02:56
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