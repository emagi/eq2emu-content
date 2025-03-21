--[[
    Script Name    : SpawnScripts/SouthFreeport/Razor.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.17 03:03:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 5, -5, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end