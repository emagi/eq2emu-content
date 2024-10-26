--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aFirerockgiantGiantField.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.28 04:09:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    HillGiantLesser(NPC, Spawn)
    RandomMovement(NPC, Spawn, 20, -20, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end