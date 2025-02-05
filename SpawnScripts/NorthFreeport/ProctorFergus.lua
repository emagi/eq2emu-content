--[[
    Script Name    : SpawnScripts/NorthFreeport/ProctorFergus.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.04 04:02:36
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    human(NPC)
    TradesmanLow(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end