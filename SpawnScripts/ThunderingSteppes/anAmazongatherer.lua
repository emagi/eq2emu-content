--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anAmazongatherer.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.01 03:09:20
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end