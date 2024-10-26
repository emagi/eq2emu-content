--[[
    Script Name    : SpawnScripts/ThunderingSteppes/acragwritherValleyRiver.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.07 11:10:59
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 4, -4, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end