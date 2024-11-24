--[[
    Script Name    : SpawnScripts/ThunderingSteppes/ahighlandstalkerRun12.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.23 11:11:15
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 12, -12, 6, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end