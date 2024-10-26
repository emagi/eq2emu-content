--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSteelhoofMove6.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.02 03:09:00
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 6, -6, 2, 8, 15)
    
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end