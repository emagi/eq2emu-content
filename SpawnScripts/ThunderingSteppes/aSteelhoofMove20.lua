--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSteelhoofMove20.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.21 04:11:52
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