--[[
    Script Name    : SpawnScripts/FallenGate/atormenteddragoon.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.10 04:03:43
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