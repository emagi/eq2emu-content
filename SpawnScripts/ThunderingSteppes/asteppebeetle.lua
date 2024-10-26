--[[
    Script Name    : SpawnScripts/ThunderingSteppes/asteppebeetle.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.15 04:04:52
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