--[[
    Script Name    : SpawnScripts/ThunderingSteppes/agriffin.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.20 10:08:31
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 50, -50, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end