--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aFirerockscoutPassGuard.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.26 06:09:35
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    HillGiantLesser(NPC, Spawn)
    RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end