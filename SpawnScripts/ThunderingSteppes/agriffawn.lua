--[[
    Script Name    : SpawnScripts/ThunderingSteppes/agriffawn.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.20 10:08:22
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 20, -20, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end